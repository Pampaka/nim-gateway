FROM nginx:alpine3.18

WORKDIR /var/www/html

RUN apt-get update \
    && apt-get install -y nginx-module-njs

COPY src/nginx.conf /etc/nginx/nginx.conf
COPY src/oauth2.js /etc/nginx/conf.d/oauth2.js
