# Set the base image
FROM debian:jessie-slim

# Set image metadata
LABEL author="Christopher Dean" \
      description="BWA Docker image" \
      maintainer="cdean11@colostate.edu"

# Install core packages
RUN apt-get update && apt-get install -y \
    build-essential \
    ca-certificates \
    git \
    zlib1g-dev \
 && rm -rf /var/lib/apt/lists/*

# Install BWA
RUN cd /opt && \
    git clone https://github.com/lh3/bwa.git && \
    cd bwa && \
    make && \
    ln -s /opt/bwa/bwa /usr/local/bin && \
    cd /

RUN mkdir /SCRATCH
WORKDIR /SCRATCH
CMD ["bash"]
