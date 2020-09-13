#!/bin/bash -u

export GOPATH=$(cd ../../ && pwd)
TAG=${1:-v2.1.0}

make build

docker buildx build -t calfox/external-attacher:${TAG} --platform linux/amd64,linux/arm64,linux/arm/v7,linux/arm/v6 --push .
