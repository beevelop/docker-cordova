FROM beevelop/android-nodejs

ENV CORDOVA_VERSION=11.0.0 \
    CORDOVA_BUILD_TOOLS_VERSION=30.0.3

WORKDIR "/tmp"

RUN while true; do echo 'y'; sleep 2; done | sdkmanager "build-tools;${CORDOVA_BUILD_TOOLS_VERSION}" && \
    npm i -g --unsafe-perm cordova@${CORDOVA_VERSION} && \
    cordova -v && \
    cd /tmp && \
    cordova create myApp com.myCompany.myApp myApp && \
    cd myApp && \
    cordova plugin add cordova-plugin-camera --save && \
    cordova platform add android --save && \
    cordova requirements android && \
    cordova build android --verbose && \
    rm -rf /tmp/myApp && \
    rm -rf /opt/android/licenses
