#!/bin/sh
set -xe
export IMAGE_NAME=garethflowers/nginx-proxy

docker build --tag $IMAGE_NAME .
docker run --rm $IMAGE_NAME nginx -v

echo "\nOK"
