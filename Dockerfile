FROM ubuntu:latest

WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    software-properties-common \
    curl \
    wget \
    git \
    vim \
    nano \
    sudo \
    unzip \
    net-tools \
    dnsutils \
    iputils-ping \
    locales \
    htop \
    man \
    openssh-server \
    ca-certificates \
    lsb-release

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["bash"]

