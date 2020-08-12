#!/bin/bash
sudo apt-get update && \
sudo apt-get -y install apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common && \
sudo curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
    $(lsb_release -cs) \
    stable" && \
sudo apt-get update && \
sudo apt-get -y install docker-ce && \
sudo apt-get -y install python-pip && \
sudo pip install docker-py && \
sudo apt update && \
sudo apt-get -y install ansible



