#!/bin/bash

echo "****************"
echo "* Building jar!*"
echo "****************"

PROJ_PATH=/var/jenkins_home/workspace/pipeline-docker-maven
docker run --rm -v /root/.m2:/root/.m2 -v $PROJ_PATH/java-app:/app -w /app maven:3-alpine mvn -B -DskipTests clean package
