#!/bin/bash
# Author : Prayag Sangode
#
sudo yum -y install wget tar
wget https://mirror.openshift.com/pub/openshift-v4/clients/crc/latest/crc-linux-amd64.tar.xz
tar xvf crc-linux-amd64.tar.xz
sudo cp ~/crc-linux-2.3.0-amd64/crc /usr/local/bin/
which crc
