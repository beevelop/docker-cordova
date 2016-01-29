FROM beevelop/android-nodejs
MAINTAINER Maik Hummel <m@ikhummel.com>

# Build-Variables
ENV CORDOVA_VERSION 6.0.0

WORKDIR "/tmp"

# Install Cordova
RUN npm i -g --unsafe-perm cordova@${CORDOVA_VERSION}
