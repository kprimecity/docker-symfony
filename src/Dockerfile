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

# 1. Install runtime utilities, system tools, media engines, and server layers
RUN apk upgrade --no-cache && \
    apk add --no-cache docker-cli \
    nano curl git bash nginx \
    supervisor openssl python3 py3-pip \
    yt-dlp ffmpeg x264-libs

# 2. Grab the official high-performance PHP extension helper binary
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

# 3. Securely compile and enable all required database, memory, cache, and processing extensions
RUN install-php-extensions \
    zip \
    exif \
    opcache \
    mysqli \
    pdo_mysql \
    pdo_pgsql \
    gd \
    intl \
    redis

# 4. Download and install Composer & Symfony Cli (While still root)
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && curl -sS https://get.symfony.com/cli/installer | bash \
    && mv /root/.symfony5/bin/symfony /usr/local/bin/symfony \
    && symfony server:ca:install

# 5. Copy structural configuration file templates
COPY nginx.conf /nginx.conf
COPY default.conf /default.conf
COPY custom-php.ini /custom-php.ini
COPY custom-opcache.ini /custom-opcache.ini
COPY custom-www-php-fpm.conf /custom-www-php-fpm.conf
COPY supervisord.conf /etc/supervisord.conf

# Remove the System Nginx default template layout
RUN rm -f /usr/share/nginx/http-default_server.conf

# 6. Bring in and set up entrypoint scripts safely
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Environment Configurations
ENV APP_DEBUG=1
ENV APP_ENV=dev
ARG COMPOSER_ALLOW_SUPERUSER=1
ENV REDIS_URL=redis://127.0.0.1:6379
ENV DATABASE_URL=mysql://null:null@127.0.0.1:3306/null
ARG INDEX_FILE_PATH="/var/www/html/public/index.php"

# Fix internal Alpine Nginx temporary folder privileges for the new nginx user context
RUN chown -R www-data:www-data /var/lib/nginx
RUN chown -R www-data:www-data /var/log/nginx
RUN chown -R www-data:www-data /var/www
RUN chmod -R 775 /var/www

# Download Symfony if not exist, Clear and warm up the cache for the specific environment
RUN if [ -f "$INDEX_FILE_PATH" ]; then \
            echo "Your index file is located at: '$INDEX_FILE_PATH'."; \
            if [ -d "/var/www/html/var/cache" ]; then \
                echo "🧹 Clearing old application cache..." && \
                cd /var/www/html && \
                php bin/console cache:clear --no-interaction && \
                php bin/console cache:warmup --no-interaction; \
            fi
      else \
            cd /var/www/html && \
            echo "Downloading Symfony framework..." && \
            composer create-project symfony/skeleton .  --no-interaction && \
            composer require webapp --no-interaction --prefer-dist && \
            composer require norkunas/youtube-dl-php:dev-master --no-interaction --prefer-dist && \
            echo "Installing dependencies..." && \
            composer install --no-interaction --prefer-dist && \
            composer dump-autoload --no-interaction --classmap-authoritative && \
            composer update --no-interaction --prefer-dist; \
      fi

# Expose HTTP and HTTPS ports
EXPOSE 80 443

ENTRYPOINT ["/start.sh"]

# Start supervisor to coordinate both Nginx and PHP-FPM under native safety controls
CMD ["supervisord", "-c", "/etc/supervisord.conf"]
