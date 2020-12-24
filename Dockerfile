# Dockerfile 用來定義自己的 image

# FROM php:7.2-fpm
FROM php:7.4-fpm
RUN apt-get update \
    && apt-get install -y iputils-ping \
    && docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# RUN pecl install redis-6.0 \
#     && docker-php-ext-enable redis
