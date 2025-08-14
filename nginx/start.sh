#!/bin/bash

envsubst < /etc/nginx/conf.d/env.conf.template > /etc/nginx/conf.d/env.conf
mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/${NGINX_SERVER_NAME}.conf
