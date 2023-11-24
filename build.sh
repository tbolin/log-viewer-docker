#!/usr/bin/env bash

docker run -t --rm \
--mount type=bind,source=$1,destination=/blackbox-log-viewer \
--workdir /blackbox-log-viewer \
--entrypoint build_entrypoint.sh \
bb-log-viewer:v0.0.1

