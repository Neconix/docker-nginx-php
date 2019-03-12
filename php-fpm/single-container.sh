#!/bin/sh

if [ -z "$1" ]; then
    echo "Please, input container name"
    exit 1
fi

container_name=$1

docker stop $container_name
docker rm $container_name
docker run --name="$container_name" -d -v `pwd`/../nginx/www:/var/www/html:ro php-fpm
docker ps | grep php-fpm
