#!/bin/sh
set -ex
export IMAGE_NAME=garethflowers/nginx

docker build --tag $IMAGE_NAME .
docker run --rm $IMAGE_NAME nginx -v
echo "\nOK"
