# Docker image for [Dagger](https://dagger.io/)

A docker image with [dagger](https://dagger.io/) and docker-cli

## Build

```bash
docker build \
    --build-arg DAGGER_VERSION=0.2.30 \
    --build-arg DOCKER_VERSION=20.10.17 \
    -t "$IMAGE_NAME" \
    .
```

## Run

```bash
docker run -it --rm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v "$PWD:$PWD" \
    -w "$PWD" \
    "$IMAGE_NAME" ---help
```
