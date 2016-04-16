FROM beevelop/android-nodejs:gapis
MAINTAINER Maik Hummel <m@ikhummel.com>

ENV CORDOVA_VERSION 6.1.1

WORKDIR "/tmp"

RUN npm i -g --unsafe-perm cordova@${CORDOVA_VERSION}
