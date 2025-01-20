FROM php:8.3.6-cli-alpine3.19

RUN apk update \
    && apk add curl

RUN curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o /usr/bin/wp-cli && chmod +x /usr/bin/wp-cli

USER www-data:www-data
WORKDIR /var/local/wordpress

RUN wp-cli core download

COPY ./wp-config.php wp-config.php

CMD php -S localhost:8000