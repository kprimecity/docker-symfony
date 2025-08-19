# Using a lightweight Alpine Linux base image with PHP-FPM
FROM php:8.4-fpm-alpine

# Set version labels
ARG BUILD_DATE=08/09/2025
ARG VERSION=v1.0.0
LABEL build_version="docker-symfony version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL org.opencontainers.image.description="Run Symfony framework using PHP:8.4-fpm."
LABEL maintainer="kprimecity"

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

ENTRYPOINT ["/start.sh"]
CMD ["php-fpm;"]
