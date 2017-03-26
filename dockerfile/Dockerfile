################################################################
# Docker starter template
################################################################
FROM ubuntu:16.04
MAINTAINER Chris Dean <cdean11@rams.colostate.edu>

################################################################
# Install core packages
################################################################
RUN apt-get update && apt-get install -y \
	aufs-tools \
        automake \
        build-essential \
        git \
        libbz2-dev \
	zlib1g-dev \
	libncurses5-dev

################################################################
# Install BWA
################################################################
RUN cd /opt && \
	git clone https://github.com/lh3/bwa.git && \
        cd bwa && \
	make && \
	mv bwa /usr/local/bin && \
	cd /

RUN mkdir /SCRATCH
WORKDIR /SCRATCH
CMD ["bash"]
