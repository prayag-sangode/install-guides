#!/bin/bash
# Author : Prayag Sangode
#
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-388.0.0-linux-x86_64.tar.gz
tar -xf google-cloud-cli-388.0.0-linux-x86.tar.gz
./google-cloud-sdk/install.sh
which gcloud
# gcloud init
