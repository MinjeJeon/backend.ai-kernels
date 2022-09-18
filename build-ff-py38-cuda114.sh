#!/usr/bin/env bash
set -e
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
DOCKER_BUILDKIT=1

cd $SCRIPTPATH/commons
docker build -t minjejeon/backendai-base:py38-cuda11.4 -f Dockerfile.base.py38-cuda11.4 .
cd $SCRIPTPATH/python-ff
docker build -t minjejeon/backendai-python-ff:py38-cuda11.4 -f Dockerfile.22.02-py38-cuda11.4 .
