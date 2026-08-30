#!/bin/bash

# Exit immediately if any command fails
set -e

# Env
PHP_INI="custom-php.ini"
OPCACHE="custom-opcache.ini"
WWW_PHP_FPM="custom-www-php-fpm.conf"
NGINX_CONF="nginx.conf"
DEFAULT_CONF="default.conf"
INDEX_FILE_PATH="/var/www/html/public/index.php"

# Move the php ini file...
if [ -f "/$PHP_INI" ]; then
    mv "/$PHP_INI" /usr/local/etc/php/conf.d/"$PHP_INI"
    echo "Your custom PHP ini file is located at: '/usr/local/etc/php/conf.d/$PHP_INI'."
fi

# Move the OPCACHE file...
if [ -f "/$OPCACHE" ]; then
    mv "/$OPCACHE" /usr/local/etc/php/conf.d/"$OPCACHE"
    echo "Your custom opcache ini file is located at: '/usr/local/etc/php/conf.d/$OPCACHE'."
fi

# Move the WWW_PHP_FPM file and completely overwrite the default pool file
if [ -f "/$WWW_PHP_FPM" ]; then
    # FIXED: Forcibly replaces the default www.conf with your optimized file
    mv -f "/$WWW_PHP_FPM" /usr/local/etc/php-fpm.d/www.conf
    echo "Your essential custom pool configuration has completely replaced the default www.conf."
	echo "Your custom php-fpm pool file is located at: '/usr/local/etc/php-fpm.d/www.conf'."
fi

# Move the NGINX_CONF file...
if [ -f "/$NGINX_CONF" ]; then
	mv "/$NGINX_CONF" /etc/nginx/"$NGINX_CONF"
    echo "Your Nginx config file is located at: '/etc/nginx/$NGINX_CONF'."
fi

# Move the DEFAULT_CONF file...
if [ -f "/$DEFAULT_CONF" ]; then
	mv "/$DEFAULT_CONF" /etc/nginx/http.d/"$DEFAULT_CONF"
    echo "Your Nginx Server config file is located at: '/etc/nginx/http.d/$DEFAULT_CONF'."
fi

# Download Symfony if not exist
if [ -f "$INDEX_FILE_PATH" ]; then
    echo "Your index file is located at: '$INDEX_FILE_PATH'."
else
    echo "Downloading Symfony framework..."
    
	cd /var/www/html
    COMPOSER_ALLOW_SUPERUSER=1 composer create-project symfony/skeleton .  --no-interaction
    COMPOSER_ALLOW_SUPERUSER=1 composer require webapp --no-interaction --prefer-dist
    COMPOSER_ALLOW_SUPERUSER=1 composer require norkunas/youtube-dl-php:dev-master --no-interaction --prefer-dist

	echo "Installing dependencies..."
    COMPOSER_ALLOW_SUPERUSER=1 composer install --no-interaction --prefer-dist --no-dev
	COMPOSER_ALLOW_SUPERUSER=1 composer dump-autoload --no-interaction --no-dev --classmap-authoritative
    COMPOSER_ALLOW_SUPERUSER=1 composer update --no-interaction --prefer-dist
fi

# Clear and warm up the cache for the specific environment
if [ -d "/var/www/html/var/cache" ]; then
    echo "🧹 Clearing old application cache..."
	
	cd /var/www/html
    php bin/console cache:clear --no-interaction
	php bin/console cache:warmup --no-interaction
fi

echo "🔒 Adjusting file permissions..."
chown -R www-data:www-data /var/www
chmod -R 775 /var/www

# Fix internal Alpine Nginx temporary folder privileges for the new nginx user context
chown -R www-data:www-data /var/lib/nginx
chown -R www-data:www-data /var/log/nginx

echo "✅ Initialization complete. Handing over control to Supervisor..."

# Execute the primary container CMD in Dockerfile
exec "$@"
