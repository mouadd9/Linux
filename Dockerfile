FROM ubuntu:latest

WORKDIR /app

RUN apt-get update && apt-get install -y \
    software-properties-common \
    curl \
    git \
    nano \
    sudo \
    unzip \
    net-tools \
    dnsutils \
    iputils-ping \
    locales

RUN apt-get clean && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/mouadd9/nginx-full-stack-setup /app

EXPOSE 80 3306
