#!/bin/zsh
if [[ ! -a ./build-filebeat/filebeat ]]; then
    ./compile-filebeat-arm.sh
fi

VCS_REF=$(git rev-parse --short HEAD)
VCS_VERSION=$(git describe)

docker buildx build --platform linux/arm/v7	--build-arg VCS_REF=$VCS_REF --build-arg VCS_VERSION=$VCS_VERSION -f Dockerfile -t radicand/docker-mailserver:`git rev-parse --verify --short HEAD` -t radicand/docker-mailserver:latest .

#docker push radicand/docker-mailserver
