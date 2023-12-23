FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    git \
    curl \
    zip \
    unzip \
    libpq-dev

RUN pecl install xdebug

RUN docker-php-ext-enable xdebug

COPY ./.docker/php/docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN useradd -G www-data,root -u 1000 -d /home/docker docker
RUN mkdir -p /home/docker && \
    chown -R docker:docker /home/docker

WORKDIR /var/www

USER docker