# Use the official PHP-FPM Alpine image
FROM php:fpm-alpine

# Set version labels
ARG BUILD_DATE=08/30/2026
ARG VERSION=v4.0.0

LABEL org.opencontainers.image.maintainer="kprimecity" \
      org.opencontainers.image.title="docker-symfony" \
      org.opencontainers.image.authors="kprimecity" \
      org.opencontainers.image.version=${VERSION} \
      org.opencontainers.image.created=${BUILD_DATE} \
      org.opencontainers.image.vendor="https://github.com/kprimecity/docker-symfony" \
      org.opencontainers.image.description="Run the Symfony framework in a Docker container (all necessary modules are included). Good to go!" \
      com.docker.desktop.extension.api.version=${VERSION} \
      com.docker.extension.detailed.description="Run Symfony framework using Nginx and PHP fpm-alpine." \
      com.docker.extension.publisher.url="https://github.com/kprimecity/docker-symfony" \
      org.opencontainers.image.source="https://github.com/kprimecity/docker-symfony" 

WORKDIR /var/www/html

# 1. Install runtime utilities, media engines, and permanent client runtimes
RUN apk upgrade --no-cache && \
    apk add --no-cache \
    nano curl git bash nginx \
    icu-libs postgresql-client libpq \
    supervisor openssl python3 py3-pip \
    libpng libjpeg-turbo freetype libzip libexif \
    youtube-dl ffmpeg x264-libs

# 2. Build and compile PHP extensions + Redis via PECL in a clean isolation layer
RUN apk add --no-cache --virtual .build-deps \
        $PHPIZE_DEPS \
        linux-headers \
        zlib-dev \
        icu-dev \
        postgresql-dev \
        libpng-dev \
        libjpeg-turbo-dev \
        freetype-dev \
        libzip-dev \
        libexif-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-configure intl \
    && docker-php-ext-install -j$(nproc) \
        zip \
        exif \
        opcache \
        mysqli \
        pdo_mysql \
        pdo_pgsql \
        gd \
        intl \
    && pecl install redis \
    && docker-php-ext-enable redis \
    && apk del .build-deps \
    && rm -rf /tmp/pear

# 3. Download and install Composer & Symfony Cli (While still root)
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && curl -sS https://get.symfony.com/cli/installer | bash \
    && mv /root/.symfony5/bin/symfony /usr/local/bin/symfony \
    && symfony server:ca:install

# 4. Copy structural configuration file templates
COPY nginx.conf /nginx.conf
COPY default.conf /default.conf
COPY custom-php.ini /custom-php.ini
COPY custom-opcache.ini /custom-opcache.ini
COPY custom-www-php-fpm.conf /custom-www-php-fpm.conf
COPY supervisord.conf /etc/supervisord.conf

# Remove the System Nginx default template layout
RUN rm -f /usr/share/nginx/http-default_server.conf

# 5. Bring in and set up entrypoint scripts safely
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expose server entry ports
EXPOSE 80
EXPOSE 443

ENTRYPOINT ["/start.sh"]

# Start supervisor to coordinate both Nginx and PHP-FPM under native safety controls
CMD ["supervisord", "-c", "/etc/supervisord.conf"]
