FROM composer:2.0.13 as build-stage

WORKDIR /app

COPY app /app

RUN composer install

FROM php:8.0.3-fpm-alpine as production-stage

WORKDIR /app

COPY --from=build-stage app/index.php /app/index.php

RUN docker-php-ext-install mysqli pdo pdo_mysql

EXPOSE 9000