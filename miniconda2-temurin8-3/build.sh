#! /usr/bin/env bash
IMAGE_NAME="cardinal4/conda-mvn"
TAG_NAME="miniconda2.py27.4.8.3-temurin8-3.8-debian11.slim"

CONDA_VERSION="py27_4.8.3"
CONDA_SHA256SUM="b820dde1a0ba868c4c948fe6ace7300a252b33b5befd078a15d4a017476b8979"
MAVEN_TAG="3.8-eclipse-temurin-8"

set +x
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
docker build -f $SCRIPT_DIR/Dockerfile \
    --build-arg CONDA_VERSION=$CONDA_VERSION \
    --build-arg CONDA_SHA256SUM=$CONDA_SHA256SUM \
    --build-arg MAVEN_TAG=$MAVEN_TAG \
    -t $IMAGE_NAME:$TAG_NAME .
docker push $IMAGE_NAME:$TAG_NAME
