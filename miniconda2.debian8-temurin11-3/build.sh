#! /usr/bin/env bash
IMAGE_NAME="cardinal4/conda-mvn"
TAG_NAME="miniconda2.debian8-temurin11-3"

CONDA_IMAGE_TAG="continuumio/miniconda:4.7.12"
MAVEN_TAG="3.8-eclipse-temurin-11"

set +x
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
docker build -f $SCRIPT_DIR/Dockerfile \
    --build-arg CONDA_IMAGE_TAG=$CONDA_IMAGE_TAG \
    --build-arg MAVEN_TAG=$MAVEN_TAG \
    -t $IMAGE_NAME:$TAG_NAME .
docker push $IMAGE_NAME:$TAG_NAME
