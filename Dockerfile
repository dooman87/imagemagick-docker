FROM fedora:27

RUN dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm && \
    yum -y update

WORKDIR /opt

RUN yum install -y libwmf-lite pangomm libtool-ltdl ghostscript fftw-libs cairo libICE libSM libX11 libXext libXt libgomp libjpeg  libpng libpng15 libtiff libwebp ilmbase OpenEXR-libs libde265 LibRaw jxrlib libraqm fribidi && \
    curl https://www.imagemagick.org/download/linux/CentOS/x86_64/ImageMagick-libs-7.0.7-30.x86_64.rpm -o ImageMagick-libs.rpm && \
    curl https://www.imagemagick.org/download/linux/CentOS/x86_64/ImageMagick-7.0.7-30.x86_64.rpm -o ImageMagick.rpm && \
    rpm -Uvh ImageMagick-libs.rpm && \
    rpm -Uvh ImageMagick.rpm && \
    yum clean all && \
    rm *.rpm

ENTRYPOINT ["convert"]
