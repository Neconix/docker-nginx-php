#!/bin/sh

docker stop nginx1
docker rm nginx1
docker run --name=nginx1 -p 8080:80 -d -v `pwd`/../www:/var/www/html:ro nginx-server
docker ps | grep nginx-server
