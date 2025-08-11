# Using a lightweight Alpine Linux base image with PHP-FPM
FROM php:8.4-fpm-alpine

# Set version labels
ARG BUILD_DATE=08/09/2025
ARG VERSION=1.0
LABEL build_version="Kgdamy version:- ${VERSION} Build-date:- ${BUILD_DATE}"

WORKDIR /var/www/html/

# Install common PHP extensions (adjust as needed)
RUN apk update && apk upgrade && \
    apk add --no-cache nano curl git bash \
    php84-mysqli \
    php84-pdo_mysql \
    php84-opcache \
    php84-gd \
    php84-xml \
    php84-mbstring \
    php84-zip

# Download and install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

EXPOSE 9000

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
