#! /usr/bin/env bash
IMAGE_NAME="cardinal4/conda-mvn"
TAG_NAME="miniforge3.4.11.0.4-temurin17-3.8"

CONDA_IMAGE_TAG="condaforge/miniforge3:4.11.0-4"
MAVEN_TAG="3.8-eclipse-temurin-17"

set +x
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
docker build -f $SCRIPT_DIR/Dockerfile \
    --build-arg CONDA_IMAGE_TAG=$CONDA_IMAGE_TAG \
    --build-arg MAVEN_TAG=$MAVEN_TAG \
    -t $IMAGE_NAME:$TAG_NAME -t $IMAGE_NAME:latest .
docker push $IMAGE_NAME:$TAG_NAME
docker push cardinal4/conda-mvn:latest