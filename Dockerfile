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
    echo '{"overrides":{"graceful-fs":"^4.2.11"},"devDependencies":{"npm-force-resolutions":"^0.0.10"},"scripts":{"preinstall":"npx npm-force-resolutions"}}' > package.json.override && \
    npm pkg set overrides.graceful-fs="^4.2.11" && \
    npm install npm-force-resolutions --no-save && \
    npx npm-force-resolutions && \
    cordova plugin add cordova-plugin-camera --save && \
    cordova platform add android --save && \
    cordova requirements android && \
    cordova build android --verbose && \
    cd /tmp && \
    rm -rf /tmp/myApp && \
    rm -rf /opt/android/licenses && \
    cd /opt && \
    npm cache clean --force && \
    node -v && npm -v && yarn -v && cordova -v && \
    mvn -v && gradle -v && java -version && ant -version
