#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-stratanium/strataniumd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/strataniumd docker/bin/
cp $BUILD_DIR/src/stratanium-cli docker/bin/
cp $BUILD_DIR/src/stratanium-tx docker/bin/
strip docker/bin/strataniumd
strip docker/bin/stratanium-cli
strip docker/bin/stratanium-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
