FROM beevelop/android-nodejs

ARG BUILD_DATE
ARG BUILD_VERSION
ARG VCS_REF

LABEL maintainer="Maik Hummel <hi@beevelop.com>" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.version=$BUILD_VERSION \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0" \
      org.label-schema.vcs-url="https://github.com/beevelop/docker-cordova.git" \
      org.label-schema.name="beevelop/cordova" \
      org.label-schema.vendor="Maik Hummel (beevelop)" \
      org.label-schema.description="Cordova inside a container" \
      org.label-schema.url="https://beevelop.com/" \
      org.label-schema.license="MIT" \
      org.opencontainers.image.title="beevelop/cordova" \
      org.opencontainers.image.description="Cordova inside a container" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.authors="Maik Hummel (beevelop)" \
      org.opencontainers.image.vendor="Maik Hummel (beevelop)" \
      org.opencontainers.image.url="https://github.com/beevelop/docker-cordova" \
      org.opencontainers.image.documentation="https://github.com/beevelop/docker-cordova/blob/master/README.md" \
      org.opencontainers.image.source="https://github.com/beevelop/docker-cordova.git"

ENV CORDOVA_VERSION 9.0.0

WORKDIR "/tmp"

RUN npm i -g --unsafe-perm cordova@${CORDOVA_VERSION}
