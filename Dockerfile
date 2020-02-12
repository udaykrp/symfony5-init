FROM php:7.3.8-fpm-stretch

ENV PHP_MONGODB_VERSION=1.5.5

RUN set -ex &&\
 apt-get update &&\
 apt-get install -y libicu-dev libxml2-dev unzip &&\
 docker-php-ext-install -j 8 intl opcache pdo_mysql soap &&\
 pecl install mongodb-${PHP_MONGODB_VERSION} &&\
 docker-php-ext-enable mongodb &&\
 apt-get autoremove --purge -y libicu-dev libxml2-dev && apt-get autoclean &&\
 rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

RUN set -ex &&\
 curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer &&\
 rm -r /root/.composer

RUN chown -R www-data: /var/www/html
