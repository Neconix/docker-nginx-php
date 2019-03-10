#!/bin/sh

docker stop php-fpm
docker rm php-fpm
docker run --name="php-fpm" -d -v `pwd`/../nginx/www:/var/www/html:ro php-fpm
docker ps | grep php-fpm
