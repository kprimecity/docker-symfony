#!/bin/bash

INDEX_FILE_PATH="/var/www/html/public/index.php"

if [ -f "$INDEX_FILE_PATH" ]; then
  echo "Your index file is located at: '$INDEX_FILE_PATH'."
else
  rm -r /var/www/html

  # DOWNLOAD SYMFONY PROJECT
  cd /var/www/ && COMPOSER_ALLOW_SUPERUSER=1 composer create-project symfony/skeleton html
  apt-get update
  cd /var/www/html/ && COMPOSER_ALLOW_SUPERUSER=1 composer require webapp

  #chown -R www-data:www-data /var/www/html \
      #&& chmod -R 755 /var/www/html
fi

php-fpm
