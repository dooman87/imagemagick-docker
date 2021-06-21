[![Docker Automated build](https://img.shields.io/docker/automated/dpokidov/imagemagick.svg)](https://hub.docker.com/r/dpokidov/imagemagick/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dpokidov/imagemagick)](https://hub.docker.com/r/dpokidov/imagemagick/)
![ci](https://github.com/dooman87/imagemagick-docker/workflows/ci/badge.svg)

# imagemagick-docker

## Overview

Delivers the latest version of the [ImageMagick](https://github.com/ImageMagick/ImageMagick) 7 to your environment in Docker container.

The purpose of that image is to be able to run the latest version of ImageMagick in stable
Linux environment with supporting modern web formats. 

## Usage

By default, container will run convert command

```
$ docker run -v /your/images:/imgs dpokidov/imagemagick /imgs/sample.png -resize 100x100 /imgs/resized-sample.png
```

You can change entrypoint and pass other IM commands to execute. For instance,

```
$ docker run --entrypoint=identify -v /your/images:/imgs dpokidov/imagemagick /imgs/sample.png
```

## Base images 

There are three base images: Fedora:27, Debian Buster (stable) and Debian Stretch (oldstable). By default, Debian Buster is used. 
Use tags to switch between base images. Not all images support the same features. Below is a table of known
formats supported by different base images:

| Base Image | Jpeg  | PNG   | JpegXR   | WebP   | AVIF   | PDF   | TIFF |
| ---------- | :---: | :---: | :------: | :----: | :----: | :---: | :--: |
| fedora27   | X     | X     | X        | X      |        | X     | X    |
| stretch    | X     | X     |          | X      |        | X     | X    |
| buster     | X     | X     |          | X      | X      | X     | X    |

