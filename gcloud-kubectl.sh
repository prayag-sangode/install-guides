#!/bin/bash
# Author : Prayag Sangode
#
curl https://sdk.cloud.google.com | bash -s -- --disable-prompts
export PATH=$PATH:~/google-cloud-sdk/bin
which gcloud
gcloud auth application-default login
gcloud components install kubectl
which kubectl

