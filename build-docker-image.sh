#!/bin/sh
./compile-filebeat-arm.sh

VCS_REF=$(shell git rev-parse --short HEAD)
VCS_VERSION=$(shell git describe)

docker buildx build --platform linux/arm/v7	--build-arg VCS_REF=$(VCS_REF) --build-arg VCS_VERSION=$(VCS_VERSION) -f Dockerfile -t radicand/docker-mailserver:`git rev-parse --verify --short HEAD` .

#docker push radicand/docker-mailserver
