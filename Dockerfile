FROM beevelop/android-nodejs

ENV CORDOVA_VERSION 11.0.0

WORKDIR "/tmp"

RUN npm i -g --unsafe-perm cordova@${CORDOVA_VERSION} && \
    cordova -v && \
    cd /tmp && \
    cordova create myApp com.myCompany.myApp myApp && \
    cd myApp && \
    cordova plugin add cordova-plugin-camera --save && \
    cordova platform add android --save && \
    cordova requirements android && \
    cordova build android --verbose && \
    rm -rf /tmp/myApp
