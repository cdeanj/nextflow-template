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
	cmake \
        wget \
        git \
        libbz2-dev \
        unzip \
        python \
	tar \
	zlib1g-dev \
	libncurses5-dev

################################################################
# Install other packages

# RUN cd /opt && \
#	wget http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/Trimmomatic-0.36.zip && \
#	unzip Trimmomatic-0.36.zip && \
#	cd Trimmomatic-0.36 && \
#	chmod u+x trimmomatic-0.36.jar && \
#	cd / && \
#	rm /opt/Trimmomatic-0.36.zip

################################################################


RUN mkdir /SCRATCH
WORKDIR /SCRATCH
CMD ["bash"]
