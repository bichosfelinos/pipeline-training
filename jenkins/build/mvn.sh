#!/bin/bash

echo "***************************"
echo "** Building jar ***********"
echo "***************************"

#WORKSPACE=/home/jenkins/jenkins-data/jenkins_home/workspace/pipeline-docker-maven

docker run --rm  -v /root/.m2/:/root/.m2/ -v $PWD/java-app:/app -w /app maven:3-alpine "$@"
