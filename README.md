# docker-mailserver for armv7

This is a fork that will build an armv7 compatible image of docker-mailserver. Please see https://github.com/tomav/docker-mailserver for documentation and usage.

You can use this image as-is as found here: https://hub.docker.com/r/radicand/docker-mailserver

## Building yourself

You will need Docker edge 19.x with buildx support. Regular Docker stable will not work as of this writing.

1. Edit `./build-docker-image.sh` to reflect your own image tag
2. Run: `./build-docker-image.sh` which will build the ARM binary for filebeat and then build an ARM image.

If pushing upstream to docker hub, then the usual `docker push ...`
