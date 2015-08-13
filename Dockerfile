FROM beevelop/android-nodejs
MAINTAINER Maik Hummel <yo@beevelop.com>

# Build-Variables
ENV CORDOVA_VERSION 5.1.1

WORKDIR "/tmp"

# Install Cordova
RUN npm i -g cordova@${CORDOVA_VERSION}