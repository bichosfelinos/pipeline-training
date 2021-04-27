#!/bin/bash

echo "########################"
echo "*** Preparing to push ***"
echo "########################"

REGISTRY="ec2-3-250-155-176.eu-west-1.compute.amazonaws.com:5043"
IMAGE="app"

#echo "*** Logging in ***"
#docker login -u user1 -p $PASS $REGISTRY
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG $REGISTRY/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push $REGISTRY/$IMAGE:$BUILD_TAG
