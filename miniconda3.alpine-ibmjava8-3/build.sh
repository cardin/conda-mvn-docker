#! /usr/bin/env bash
IMAGE_NAME="cardinal4/conda-mvn"
TAG_NAME="miniconda3.alpine-ibmjava8-3"

CONDA_IMAGE_TAG="continuumio/miniconda3:4.10.3p0-alpine"
MAVEN_TAG="3.8-ibmjava-8-alpine"

set +x
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
docker build -f $SCRIPT_DIR/Dockerfile \
    --build-arg CONDA_IMAGE_TAG=$CONDA_IMAGE_TAG \
    --build-arg MAVEN_TAG=$MAVEN_TAG \
    -t $IMAGE_NAME:$TAG_NAME .
docker push $IMAGE_NAME:$TAG_NAME
