# Using a lightweight Alpine Linux base image for Nginx
FROM nginx:alpine

# Set version labels
ARG BUILD_DATE=08/09/2025
ARG VERSION=v1.0.0
LABEL build_version="docker-symfony version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="kprimecity"

WORKDIR /etc/nginx

RUN apk update && apk upgrade && apk add --no-cache nano bash

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy Nginx configuration
COPY default.conf /default.conf
COPY env.conf.template /env.conf.template

# Copy symfony cert
COPY rootCA.pem /rootCA.pem
COPY  rootCA-key.pem /rootCA-key.pem

EXPOSE 80
EXPOSE 443

COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
