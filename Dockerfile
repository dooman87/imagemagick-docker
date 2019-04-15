FROM fedora:27

RUN dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm && \
    yum -y update

WORKDIR /opt

RUN yum install -y libtool-ltdl libjpeg libjpeg-devel libpng libpng-devel libtiff libtiff-devel libwebp libwebp-devel LibRaw LibRaw-devel jxrlib git make automake gcc pkgconf && \
    git clone https://github.com/ImageMagick/ImageMagick.git && \
    cd ImageMagick && git checkout 7.0.8-40 && \
    ./configure && make && make install && \
    cd ../ && \
    rm -rf ./ImageMagick && \
    yum remove -y git make automake gcc libjpeg-devel libpng-devel libtiff-devel libwebp-devel LibRaw-devel && \
    yum clean all

ENTRYPOINT ["convert"]
