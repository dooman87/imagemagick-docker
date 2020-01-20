[![Docker Automated build](https://img.shields.io/docker/automated/dpokidov/imagemagick.svg)](https://hub.docker.com/r/dpokidov/imagemagick/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dpokidov/imagemagick)](https://hub.docker.com/r/dpokidov/imagemagick/)
[![Build Status](https://travis-ci.org/dooman87/imagemagick-docker.svg?branch=master)](https://travis-ci.org/dooman87/imagemagick-docker)

# imagemagick-docker

## Overview

Delivers the latest version of the [ImageMagick](https://github.com/ImageMagick/ImageMagick) 7 to your environment in Docker container.

## Usage

By default container will run convert command

```
$ docker run -v /your/images:/imgs dpokidov/imagemagick /imgs/sample.png -resize 100x100 /imgs/resized-sample.png
```

You can change entrypoint and pass other IM commands to execute. For instance,

```
$ docker run --entrypoint=identify -v /your/images:/imgs dpokidov/imagemagick /imgs/sample.png
```

## Base images 

There are two base images: Fedora:27 and Debian Stretch. By default Fedora is used. To use debian use
:stretch tag instead.

