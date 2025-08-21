FROM beevelop/android-nodejs

ENV CORDOVA_VERSION=12.0.0 \
    CORDOVA_BUILD_TOOLS_VERSION=34.0.0 \
    ANDROID_HOME=/opt/android

WORKDIR "/tmp"

# Install build tools and Cordova, then test build to verify setup
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
    cd /usr/lib/node_modules/npm/node_modules && \
    npm install graceful-fs@latest --no-save && \
    cd /tmp && \
    rm -rf /tmp/myApp && \
    rm -rf /opt/android/licenses && \
    npm cache clean --force && \
    node -v && npm -v && yarn -v && cordova -v && \
    mvn -v && gradle -v && java -version && ant -version
