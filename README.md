# docker-mailserver for armv7

This is a fork that will build an armv7 compatible image of docker-mailserver. Please see https://github.com/tomav/docker-mailserver for documentation and usage.

You can use this image as-is as found here: https://cloud.docker.com/u/radicand/repository/docker/radicand/docker-mailserver

## Building yourself

Run: `./compile-filebeat-arm.sh` which will put an ARM binary for filebeat in ./build-filebeat.
Edit `./build-docker-image.sh` to reflect your own image tag
Run: `./build-docker-image.sh`

If pushing upstream to docker hub, then the usual `docker push ...`
