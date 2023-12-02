#!/bin/bash

docker build -t img-builder --progress=plain .
docker run --detach --name builder --rm img-builder tail -f /dev/null
docker cp builder:/build/src/matlab-websocket/target/matlab-websocket-1.6.jar .
docker kill builder
docker image rm img-builder
