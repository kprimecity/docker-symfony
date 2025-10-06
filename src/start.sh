#!/bin/bash

PHP_INI="/custom-php.ini"
OPCACHE="/opcache.ini"
NGINX_CONF="/nginx.conf"
DEFAULT_CONF="/default.conf"
INDEX_FILE_PATH="/var/www/html/web/public/index.php"

if [ -f "$PHP_INI" ]; then
    # Move the php ini file...
    mv /custom-php.ini /usr/local/etc/php/conf.d/custom-php.ini
    echo "Your custom PHP ini file is located at: '/usr/local/etc/php/conf.d$PHP_INI'."
fi

if [ -f "$OPCACHE" ]; then
    # Move the php ini file...
    mv /opcache.ini /usr/local/etc/php/conf.d/opcache.ini
    echo "Your custom opcache ini file is located at: '/usr/local/etc/php/conf.d$OPCACHE'."
fi

if [ -f "$NGINX_CONF" ]; then
    # Move Nginx default config
	mv /nginx.conf /etc/nginx/nginx.conf
    echo "Your Nginx config file is located at: '/etc/nginx/$NGINX_CONF'."
fi

if [ -f "$DEFAULT_CONF" ]; then
    # Move Nginx default config
	mv /default.conf /etc/nginx/http.d/default.conf
    echo "Your Nginx Server config file is located at: '/etc/nginx/http.d$DEFAULT_CONF'."
fi

if [ -f "$INDEX_FILE_PATH" ]; then
    echo "Your index file is located at: '$INDEX_FILE_PATH'."
else
    echo "Downloading symfony framework..."
    cd /var/www/html/
    COMPOSER_ALLOW_SUPERUSER=1 composer create-project symfony/skeleton web
    cd /var/www/html/web/
    COMPOSER_ALLOW_SUPERUSER=1 composer require webapp
    COMPOSER_ALLOW_SUPERUSER=1 composer require norkunas/youtube-dl-php:dev-master
    COMPOSER_ALLOW_SUPERUSER=1 composer update
    cd /var/www/html/

    addgroup www-data
    adduser -D -H -G www-data www-data
    
    chown -R www-data:www-data web/
    chmod -R 775 web/
fi

# Update and clear the cache
apk update && apk upgrade && apk cache sync
exec supervisord -c /etc/supervisord.conf
