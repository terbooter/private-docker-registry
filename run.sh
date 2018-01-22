#!/bin/sh
echo "RUN DOCKER REGISTRY"

# Replace DOMAIN
# And make htpasswd file for basic auth

sed -i "s|REGISTRY_DOMAIN|${LE_FQDN}|g" /etc/nginx/service.conf && \
htpasswd -c -b -s /etc/nginx/klassapp.htpasswd ${REGISTRY_USER} ${REGISTRY_PASSWORD} && \

/entrypoint.sh