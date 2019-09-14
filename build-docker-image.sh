#!/bin/sh
./compile-filebeat-arm.sh

docker buildx build --platform linux/arm/v7 -f Dockerfile -t radicand/docker-mailserver:`git rev-parse --verify --short HEAD`  .

#docker push radicand/docker-mailserver
