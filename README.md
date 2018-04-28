[![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/dpokidov/imagemagick/)
[![Build Status](https://travis-ci.org/dooman87/imagemagick-docker.svg?branch=master)](https://travis-ci.org/dooman87/imagemagick-docker)

# imagemagick-docker

## Overview

Delivers the latest version of the [ImageMagick](imagemagick.org) 7 to your environment in Docker container.

## Usage

By default container will run convert command

```
$ docker run -v /your/images:/imgs dpokidov/imagemagick /imgs/sample.png -resize 100x100 /imgs/resized-sample.png
```

You can change entrypoint and pass other IM commands to execute. For instance,

```
$ docker run --entrypoint=identify -v /your/images:/imgs dpokidov/imagemagick /imgs/sample.png
```



