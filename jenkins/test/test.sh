#!/bin/bash

echo "***************************"
echo "** Testing the code ***********"
echo "***************************"
#WORKSPACE=/home/jenkins/jenkins-data/jenkins_home/workspace/pipeline-docker-maven
docker run --rm  -v /root/.m2/:/root/.m2/  -v $PWD/java-app:/app -w /app maven:3-alpine "$@"

#docker run --rm  -v  $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
