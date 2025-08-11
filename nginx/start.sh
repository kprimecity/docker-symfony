#!/bin/bash

envsubst < /env.conf.template > /env.conf
mv /default.conf /etc/nginx/conf.d/${NGINX_SERVER_NAME}.conf
