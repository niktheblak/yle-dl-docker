#!/usr/bin/env bash

docker run \
  -it \
  --rm \
  -v $PWD:/output \
  yle-dl:latest \
  "$@"
