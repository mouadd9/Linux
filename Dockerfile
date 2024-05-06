# Use the official Ubuntu base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Avoid prompts from apt during build
ENV DEBIAN_FRONTEND=noninteractive

# Update apt packages list and install packages
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

# Set locale to UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Set the default command for the container
CMD ["bash"]

