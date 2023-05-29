#!/bin/bash
export NODE_RED_VERSION=$(grep -oE "\"node-red\": \"(\w*.\w*.\w*.\w*.\w*.)" package.json | cut -d\" -f4)
export NODE_VERSION="18"
echo "#########################################################################"
echo "node-red version: ${NODE_RED_VERSION}"
echo "node version: ${NODE_VERSION}"
echo "#########################################################################"

docker build --rm --no-cache \
    --build-arg ARCH=amd64 \
    --build-arg NODE_VERSION=${NODE_VERSION} \
    --build-arg NODE_RED_VERSION=${NODE_RED_VERSION} \
    --build-arg OS=buster-slim \
    --build-arg BUILD_DATE="$(date +"%Y-%m-%dT%H:%M:%SZ")" \
    --build-arg TAG_SUFFIX=default \
    --file Dockerfile.debian \
    --target RELEASE \
    --tag ivaccari/node-red:${NODE_RED_VERSION}-v${NODE_VERSION} .
