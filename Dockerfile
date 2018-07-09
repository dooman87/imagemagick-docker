FROM fedora:27

RUN dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm && \
    yum -y update

WORKDIR /opt

RUN yum install -y libwmf-lite pangomm libtool-ltdl ghostscript fftw-libs cairo libICE libSM libX11 libXext libXt libgomp libjpeg  libpng libpng15 libtiff libwebp ilmbase OpenEXR-libs libde265 LibRaw jxrlib libraqm fribidi git make automake gcc && \
    git clone https://github.com/ImageMagick/ImageMagick.git && \
    cd ImageMagick && git checkout 7.0.8-5 && \
    ./configure && make && make install && \
    cd ../ && \
    rm -rf ./ImageMagick && yum remove -y git make automake gcc && yum clean all

ENTRYPOINT ["convert"]
