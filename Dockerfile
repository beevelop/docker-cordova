FROM beevelop/android-nodejs
MAINTAINER Maik Hummel <m@ikhummel.com>

ENV CORDOVA_VERSION 7.0.1

WORKDIR "/tmp"

RUN npm i -g --unsafe-perm cordova@${CORDOVA_VERSION}
