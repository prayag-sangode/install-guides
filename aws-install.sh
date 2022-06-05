#!/bin/bash
# Author : Prayag Sangode
#
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
mkdir ~/aws-cli-install
unzip awscli-bundle.zip -d aws-cli-install
sudo ./~aws-cli-install/awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
which aws
