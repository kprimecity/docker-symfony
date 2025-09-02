#!/bin/bash

PHP_INI="/docker-php.ini"
DEFAULT_CONF="/default.conf"
INDEX_FILE_PATH="/var/www/html/web/public/index.php"

if [ -f "$PHP_INI" ]; then
    # Move the php ini file...
    mv /docker-php.ini /usr/local/etc/php/conf.d/docker-php.ini
    echo "Your custom PHP ini file is located at: '/usr/local/etc/php/conf.d$PHP_INI'."
fi

if [ -f "$DEFAULT_CONF" ]; then
    # Move Nginx default config
	mv /default.conf /etc/nginx/http.d/default.conf
    echo "Your Nginx config file is located at: '/etc/nginx/http.d$DEFAULT_CONF'."
fi

if [ -f "$INDEX_FILE_PATH" ]; then
    echo "Your index file is located at: '$INDEX_FILE_PATH'."
else
    echo "Downloading symfony framework..."
    cd /var/www/html/ && COMPOSER_ALLOW_SUPERUSER=1 composer create-project symfony/skeleton web
    cd /var/www/html/web/ && COMPOSER_ALLOW_SUPERUSER=1 composer require webapp
    cd /var/www/html/
fi

# Update and clear the cache
apk update && apk upgrade && apk cache sync

exec supervisord -c /etc/supervisord.conf
