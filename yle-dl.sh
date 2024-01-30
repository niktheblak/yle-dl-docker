#!/usr/bin/env bash

docker run \
  -it \
  --rm \
  -v "$PWD:/app" \
  yle-dl:latest \
  "$@"
