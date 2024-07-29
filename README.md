[![Docker Automated build](https://img.shields.io/docker/automated/dpokidov/imagemagick.svg)](https://hub.docker.com/r/dpokidov/imagemagick/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dpokidov/imagemagick)](https://hub.docker.com/r/dpokidov/imagemagick/)
![ci](https://github.com/dooman87/imagemagick-docker/workflows/ci/badge.svg)

# imagemagick-docker

## Overview

Delivers the latest version of the [ImageMagick](https://github.com/ImageMagick/ImageMagick) 7 to your environment in a Docker container.

The purpose of this image is to be able to run the latest version of ImageMagick in stable
Linux environment to support next generation image format that could be used on Web. 

## Usage

By default, a container will run convert command

```
$ docker run -v /your/images:/imgs dpokidov/imagemagick /imgs/sample.png -resize 100x100 /imgs/resized-sample.png
```

You can change entrypoint and pass other IM commands to execute. For instance,

```
$ docker run --entrypoint=identify -v /your/images:/imgs dpokidov/imagemagick /imgs/sample.png
```

## Base images 

There are three base images: Debian Bullseye (default), Bookworm and Ubuntu Focal.  

Use tags to switch between base images. 

All images support the same set of formats:

| Base Image      | Jpeg | PNG | WebP | AVIF | JPEG XL | JpegXR  | PDF  | TIFF |
|-----------------|:----:|:---:|:----:|:----:|:-------:|:-------:|:----:|:----:|
| Debian Bullseye | ✅    |  ✅  |  ✅   |  ✅   |    ✅    |    ✅    |  ✅   |  ✅   |
| Debian Bookworm | ✅    |  ✅  |  ✅   |  ✅   |    ✅    |    ✅    |  ✅   |  ✅   |
| Ubuntu Focal    |  ✅   |  ✅  |  ✅   |  ✅   |    ✅    |    ✅    |  ✅   |  ✅   |

