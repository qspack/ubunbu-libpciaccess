ARG FROM_IMG_REGISTRY=docker.io
ARG FROM_IMG_REPO=qspack
ARG FROM_IMG_NAME="ubuntu-libtool"
ARG FROM_IMG_TAG="latest"
ARG FROM_IMG_HASH=""
FROM ${FROM_IMG_REGISTRY}/${FROM_IMG_REPO}/${FROM_IMG_NAME}:${FROM_IMG_TAG}${FROM_IMG_HASH}

ARG LIBPCIACCESS_VERSION=0.13.4
ENV SPACK_LIBPCIACCESS_VERSION=${LIBPCIACCESS_VERSION}
LABEL qnib.spack.libpciaccess.version=${SPACK_LIBPCIACCESS_VERSION}
RUN /usr/local/src/spack/bin/spack install --no-checksum libpciaccess@${SPACK_LIBPCIACCESS_VERSION} \
                  ^libtool@${SPACK_LIBTOOL_VERSION}
