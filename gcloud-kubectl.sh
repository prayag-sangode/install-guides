#!/bin/bash
# Author : Prayag Sangode
#
curl https://sdk.cloud.google.com | bash -s -- --disable-prompts
which gcloud
export PATH=$PATH:~/google-cloud-sdk/bin
which gcloud
export PATH=$PATH:~/google-cloud-sdk/bin
which gcloud
gcloud components install kubectl
which kubectl

