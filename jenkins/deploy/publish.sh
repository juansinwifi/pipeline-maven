#!/bin/bash
export REGISTRY=api.alivio.b612.cloud:5043
export IMAGE=$(sed -n '1p' /tmp/.auth)
export TAG=$(sed -n '2p' /tmp/.auth)
export PASS=$(sed -n '3p' /tmp/.auth)

docker login -u user1 -p $PASS $REGISTRY

cd ~/jenkins/ && docker-compose up -d
