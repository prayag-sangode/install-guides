#!/bin/bash
# Author : Prayag Sangode
#
curl -fsSL https://get.docker.com/ | sh
sudo usermod -aG docker $USER
which docker
sudo systemctl enable --now docker
docker ps

