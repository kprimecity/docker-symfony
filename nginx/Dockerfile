# Using a lightweight Alpine Linux base image for Nginx
FROM nginx:alpine

# Set version labels
ARG BUILD_DATE=08/09/2025
ARG TAG=1.0.0
LABEL build_version="docker-symfony version:- ${TAG} Build-date:- ${BUILD_DATE}"

WORKDIR /etc/nginx

RUN apk update && apk upgrade && apk add --no-cache nano bash

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

COPY default.conf /default.conf
COPY env.conf.template /env.conf.template

EXPOSE 80

COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
CMD ["nginx", "-g", "daemon off;"]
