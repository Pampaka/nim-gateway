FROM nginx:alpine3.18

WORKDIR /var/www/html

RUN apk update \
    && apk add nginx-module-njs

COPY src/nginx.conf /etc/nginx/nginx.conf
COPY src/oauth2.js /etc/nginx/conf.d/oauth2.js
