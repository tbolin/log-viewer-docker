#!/usr/bin/env bash

docker build --tag=bb-log-viewer:v0.0.1 \
  --build-arg USER_ID=$(id -u) \
  --build-arg GROUP_ID=$(id -g) .
