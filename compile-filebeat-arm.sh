# Originally from https://gist.github.com/anis-campos/31864e8d3fe7e323c738a8c7160e64ad
#----- Create a Docker for cross-compilation -----#
mkdir build-filebeat && cd $_
docker run --rm -v `pwd`:/build-filebeat golang:1.8.3 bash -c 'go get github.com/elastic/beats ; cd /go/src/github.com/elastic/beats/filebeat/ && git checkout v5.6.3 && GOARCH=arm go build && cp filebeat /build-filebeat'
#----- Verify the outputfile -----#
file filebeat
#filebeat: ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, not stripped
