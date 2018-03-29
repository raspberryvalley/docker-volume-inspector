#
# Docker Volume Inspectory
#
# The image created with this Dockerfile serves development in the
# Raspberry Valley makerspace
#
# Raspberry Valley Makerspace site: https://raspberry-valley.azurewebsites.net
# Volume Inspector on Docker Hub: https://hub.docker.com/r/raspberryvalley/volume-inspector/
# Volume Inspector on Github: https://github.com/raspberryvalley/docker-volume-inspector
#

FROM alpine:3.6
LABEL maintainer = Raspberry Valley <raspberryvalley@outlook.com>

RUN apk update && apk add \
        nano \
		mc

WORKDIR /home
CMD ["mc"]
