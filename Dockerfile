FROM centos:7.3.1611

RUN yum -y update

WORKDIR /opt
RUN yum install -y libwmf-lite pangomm libtool-ltdl ghostscript fftw-libs cairo libICE libSM libX11 libXext libXt libgomp  libjpeg  libpng15 libtiff libtiff && \
    curl https://www.imagemagick.org/download/linux/CentOS/x86_64/ImageMagick-libs-7.0.7-18.x86_64.rpm -o ImageMagick-libs.rpm && \
    curl https://www.imagemagick.org/download/linux/CentOS/x86_64/ImageMagick-7.0.7-18.x86_64.rpm -o ImageMagick.rpm && \
    rpm -Uvh ImageMagick-libs.rpm && \
    rpm -Uvh ImageMagick.rpm && \
    yum clean all && \
    rm *.rpm

ENTRYPOINT ["convert"]
