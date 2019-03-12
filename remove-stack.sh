#!/bin/sh

if [ -z "$1" ]; then
    echo "Please, input stack name to remove"
    exit 1
fi

docker stack rm $1
