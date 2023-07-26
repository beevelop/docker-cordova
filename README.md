![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/beevelop/docker-cordova/docker.yml?style=for-the-badge)
![Docker Pulls](https://img.shields.io/docker/pulls/beevelop/cordova.svg?style=for-the-badge)
![Docker Stars](https://img.shields.io/docker/stars/beevelop/cordova?style=for-the-badge)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/beevelop/cordova/latest?style=for-the-badge)
![License](https://img.shields.io/github/license/beevelop/docker-cordova?style=for-the-badge)
[![GitHub release](https://img.shields.io/github/release/beevelop/docker-cordova.svg?style=for-the-badge)](https://github.com/beevelop/docker-cordova/releases)
![GitHub Release Date](https://img.shields.io/github/release-date/beevelop/docker-cordova?style=for-the-badge)
![CalVer](https://img.shields.io/badge/CalVer-YYYY.MM.MICRO-22bfda.svg?style=for-the-badge)
[![Beevelop](https://img.shields.io/badge/-%20Made%20with%20%F0%9F%8D%AF%20by%20%F0%9F%90%9Dvelop-blue.svg?style=for-the-badge)](https://beevelop.com)

# Cordova 11

### based on [beevelop/android-nodejs](https://github.com/beevelop/docker-android-nodejs)

---

### Pull from Docker Hub

```bash
docker pull beevelop/cordova:latest
```

### Or build from GitHub

```bash
docker build -t beevelop/cordova github.com/beevelop/docker-cordova
```

### Run image

```bash
docker run -it beevelop/cordova bash
```

### Or use it as a base image

```Dockerfile
FROM beevelop/cordova:latest
```

## Releases

Releases follow [CalVer (Calendar Versioning)](https://calver.org/) and use `YYYY.MM.MICRO` syntax. The following command helps with tagging a new release:

```bash
echo git tag "v$(date +"%Y.%m").$(($(git tag -l "v$(date +"%Y.%m").*" | wc -l)+1))"
```

---

![One does not simply use latest](https://i.imgflip.com/1fgwxr.jpg)
