#!/bin/sh

if [ -z "$1" ]; then
    echo "Please, input stack name"
    exit 1
fi

docker stack deploy -c docker-compose.yml $1
