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

RUN apk-get install -y \
    libzip-dev \
    zip \
  && docker-php-ext-install zip

  # Install dev dependencies
RUN apk add --no-cache --virtual .build-deps \
    $PHPIZE_DEPS \
    curl-dev \
    imagemagick-dev \
    libtool \
    libxml2-dev \
    sqlite-dev\
    bash \
    curl \
    freetype-dev \
    g++ \
    gcc \
    git \
    icu-dev \
    icu-libs \
    imagemagick \
    libc-dev \
    libjpeg-turbo-dev \
    libpng-dev \
    libzip-dev \
    make \
    oniguruma-dev \
    rsync \
    zlib-dev

    # Enable PECL and PEAR extensions
RUN docker-php-ext-enable     imagick 
RUN docker-php-ext-configure gd --with-freetype --with-jpeg

# Install php extensions
RUN docker-php-ext-install \
    bcmath \
    curl \
    exif \
    gd \
    iconv \
    intl \
    mbstring \
    pdo_sqlite \
    pcntl \
    tokenizer \
    xml \
    zip

    RUN apk del -f .build-deps
