# Use the official PHP-FPM Alpine image
FROM php:fpm-alpine

# Set version labels
ARG BUILD_DATE=09/15/2025
ARG VERSION=v2.1.0

LABEL org.opencontainers.image.maintainer="kprimecity"
LABEL org.opencontainers.image.title="docker-symfony"
LABEL org.opencontainers.image.authors="kprimecity"
LABEL org.opencontainers.image.version=${VERSION}
LABEL org.opencontainers.image.created=${BUILD_DATE}
LABEL org.opencontainers.image.vendor="https://github.com/kprimecity/docker-symfony"
LABEL org.opencontainers.image.description="Run the Symfony framework in a Docker container (all necessary modules are included). Good to go!"
LABEL com.docker.desktop.extension.api.version=${VERSION}
LABEL com.docker.extension.detailed.description="Run Symfony framework using Nginx and php-fpm."
LABEL com.docker.extension.publisher.url="https://github.com/kprimecity/docker-symfony"
LABEL org.opencontainers.image.source="https://github.com/kprimecity/docker-symfony" 
LABEL com.docker.extension.screenshots='[{"alt": "screenshot one", "url": "https://private-user-images.githubusercontent.com/15088570/479583967-ebcbc084-6769-4a7a-865d-e4f2d8df1ab1.PNG?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NTY2Nzk4NDgsIm5iZiI6MTc1NjY3OTU0OCwicGF0aCI6Ii8xNTA4ODU3MC80Nzk1ODM5NjctZWJjYmMwODQtNjc2OS00YTdhLTg2NWQtZTRmMmQ4ZGYxYWIxLlBORz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNTA4MzElMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjUwODMxVDIyMzIyOFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWM1NzBmMTJhY2QxZDU4NjJkMmY2YzljMjQxYmQzYzc0NmE2NDM2YWMzYjE5NzcwNjExZWI5Nzc4YWU2OWI5NzImWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.ykTtSlDWfJHXBSgvrsy_hN93j-c6gserow1yS8iRlTo"}]'

WORKDIR /var/www/html/web

# Install Nginx and other necessary packages
RUN apk update && apk upgrade && \
    apk add --no-cache --update \
    openrc nano curl git bash icu-dev nginx \
    supervisor openssl \
    libpng-dev \
    libjpeg-turbo-dev \
    freetype-dev \
    python3 py3-pip \
    libzip-dev \
    zip unzip

# Configure and install the php extension
RUN docker-php-ext-install zip
RUN docker-php-ext-install opcache
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-configure gd --with-freetype --with-jpeg && docker-php-ext-install gd
RUN docker-php-ext-configure intl && docker-php-ext-install intl

# Copy Nginx configuration file
# Location: /etc/nginx/nginx.conf
COPY nginx.conf /nginx.conf
COPY default.conf /default.conf

# Customize the PHP extension
# e.g: short_open_tag = off
# Location: /usr/local/etc/php/conf.d/custom-php.ini
COPY custom-php.ini /custom-php.ini

# Customize the opcache extension
COPY opcache.ini /opcache.ini

# Config file to manage both Nginx and PHP-FPM
COPY supervisord.conf /etc/supervisord.conf

# Remove the System Nginx config file
RUN rm /usr/share/nginx/http-default_server.conf

# Download and install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Download and install Symfony cli
RUN curl -sS https://get.symfony.com/cli/installer | bash
RUN mv /root/.symfony5/bin/symfony /usr/local/bin/symfony

RUN symfony server:ca:install

# Expose port 80 443 for Nginx
EXPOSE 80
EXPOSE 443

COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
