#
# Docker Volume Inspectory
#
# The image created with this Dockerfile serves development in the
# Raspberry Valley makerspace
#
# Volume Inspector on Docker Hub: https://hub.docker.com/r/raspberryvalley/volume-inspector/
#

FROM alpine:3.6
LABEL maintainer = Raspberry Valley <raspberryvalley@outlook.com>

RUN apk update && apk add \
        nano \
		mc

WORKDIR /home
CMD ["mc"]
