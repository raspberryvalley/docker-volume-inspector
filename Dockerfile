#
# Docker Volume Inspectory
#
# The image created with this Dockerfile serves development in the
# Raspberry Valley makerspace
#
# Volume Inspector on Docker Hub: https://hub.docker.com/r/raspberryvalley/volume-inspector/
# Volume Inspector on Github: https://github.com/raspberryvalley/docker-volume-inspector
#
# Raspberry Valley is a makerspace in Sweden, Karlskrona. You can visit our sites and check what's developing: 
# * Knowledge base: https://raspberry-valley.azurewebsites.net
# * Github pages: https://github.com/raspberryvalley
# * Docker hub: hub.docker.com/r/raspberryvalley/

FROM alpine:3.22
LABEL maintainer = Raspberry Valley <raspberryvalley@outlook.com>

RUN apk update && apk add \
        nano \
		mc

WORKDIR /home
CMD ["mc"]
