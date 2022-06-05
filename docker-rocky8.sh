#!/bin/bash
# Author: Prayag Sangode
#
sudo yum -y install yum-utils
sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf install -y docker-ce
sudo usermod -aG docker $USER
which docker
docker ps
