#!/bin/sh

if [ -z "$1" ]; then
    echo "Please, input container name"
    exit 1
fi

container_name=$1

docker stop $container_name
docker rm $container_name
docker run --name=$container_name -p 8080:80 -d -v `pwd`/../www:/var/www/html:ro nginx-server
docker ps | grep nginx-server
