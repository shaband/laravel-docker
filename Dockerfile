FROM php:7.3-fpm-alpine

WORKDIR /var/www/html

# RUN  pecl install xdebug-2.8.1 


#RUN apk add --no-cache $PHPIZE_DEPS \
 #   && pecl install xdebug \
RUN  docker-php-ext-install pdo pdo_mysql 
 # xdebug

RUN apk add --no-cache $PHPIZE_DEPS \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug