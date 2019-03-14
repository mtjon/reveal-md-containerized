# Containerized Reveal-md

This repo contains a crude containerization of [reveal-md](https://github.com/webpro/reveal-md), based on the official alpine-based [Node](https://hub.docker.com/_/node)-image.

# Usage

The image's default `entrypoint` is the reveal-md node-app looking for reveal presentation in `/home/node/work`. So you can simply run the container with the proper port exposed (default: `1948`) and bind-mount specified:

```shell
docker container run -d --rm -p 1948:1948 -v $PWD:/home/node/work reveal-md:tag
```

# Building

The image can simply be built from the Dockerfile by first cloning this and building the image:

```shell
docker build -t reveal-md:0.1.4 github.com/mtjon/reveal-md-containerized
```
