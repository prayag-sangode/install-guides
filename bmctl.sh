#!/bin/bash
# Author : Prayag Sangode
#
curl https://sdk.cloud.google.com | bash -s -- --disable-prompts
export PATH=$PATH:~/google-cloud-sdk/bin
which gcloud
gcloud auth application-default login
gcloud components install kubectl
which kubectl
export PROJECT_ID=""
gcloud config set project $PROJECT_ID
export VERSION=1.14.0
gsutil cp gs://anthos-baremetal-release/bmctl/$VERSION/linux-amd64/bmctl .
chmod +x ./bmctl
which bmctl
gsutil cp gs://anthos-baremetal-release/bmctl/$VERSION/linux-amd64/bmpackages_$VERSION.tar.xz .
