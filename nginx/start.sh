#!/bin/bash

DEFAULT_CONF="/default.conf"
ENV_CONF="/env.conf.template"

if [ -f "$ENV_CONF" ]; then
	# Put the user variable and rename it...
    envsubst < /env.conf.template > /env.conf
fi

if [ -f "$DEFAULT_CONF" ]; then
    # Move the default conf...
	mv /default.conf /etc/nginx/conf.d/default.conf
fi

nginx -g "daemon off;"
