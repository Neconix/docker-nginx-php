FROM php:7.2-fpm

#VOLUME ./resolv.conf:/etc/resolv.conf:ro

# Install modules
RUN apt update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libicu-dev \
        wget \
        git \
        --no-install-recommends

RUN docker-php-ext-install zip intl mbstring pdo_mysql exif \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd

RUN [ -n "$HTTP_PROXY" ] && pear config-set http_proxy $HTTP_PROXY \
    && pecl install -o -f xdebug \
    && rm -rf /tmp/pear

COPY ./php.ini /usr/local/etc/php/

RUN apt-get purge -y g++ \
    && apt-get autoremove -y \
    && rm -r /var/lib/apt/lists/* \
    && rm -rf /tmp/*
#    && sh /install-composer.sh \
#    && rm /install-composer.sh

#RUN usermod -u 1000 www-data
#VOLUME /root/.composer
#WORKDIR /var/www/html

EXPOSE 9000
CMD ["php-fpm"]
