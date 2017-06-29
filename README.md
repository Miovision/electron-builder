A customized [electron-builder:wine][electron-builder-wine] container for Docker. It is based on a hybrid of [electron-builder:node 6][electron-builder-6] and [electron-builder:wine][electron-builder-wine] as a solution to resolve build issues caused by dependency support of Node 8; used by [electron-builder:wine][electron-builder-wine].

## Usage

To pull the image from Docker Hub:

```
docker pull miovision/electron-builder:latest
```

## Build

```
docker build -t miovision/electron-builder:latest .
```

[electron-builder]: https://github.com/electron-userland/electron-builder
[electron-builder-wine]: https://github.com/electron-userland/electron-builder/tree/master/docker/wine
[electron-builder-6]: https://github.com/electron-userland/electron-builder/tree/master/docker/6
[electron-builder-8]: https://github.com/electron-userland/electron-builder/tree/master/docker/8
