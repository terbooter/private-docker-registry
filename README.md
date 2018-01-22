# Private Docker registry
Frontend based on [Nginx with integrated Lets Encrypt](https://github.com/umputun/nginx-le)
[Let's Encrypt](https://letsencrypt.org)

Simple nginx image (alpine based) with integrated [Let's Encrypt](https://letsencrypt.org) support.

## How to use
* Provision server with docker supporting compose 3.5 version
* Clone this repo ``
* Create file `docker-compose.override.yml`
with content
```
version: '3.5'
services:
    nginx:
      environment:
        - LE_EMAIL=your@email.com
        - LE_FQDN=registry.your-domain.com
        - REGISTRY_USER=docker-username
        - REGISTRY_PASSWORD=docker-password
```
* `docker-compose build && docker-compose up -d`

#TODO replace domain name in registry.domain.conf file with sed cli editor
add one more sh script to Dockerfile