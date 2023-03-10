#!/usr/bin/env bash

docker run -it --rm \
--mount type=bind,source=$1,destination=/blackbox-log-viewer \
--workdir /blackbox-log-viewer \
bb-log-viewer:v0.0.1

