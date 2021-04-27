#!/bin/bash

echo app > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
#echo $PASS >> /tmp/.auth

sudo scp -i /home/ubuntu/master21.pem /tmp/.auth ubuntu@ec2-3-250-155-176.eu-west-1.compute.amazonaws.com:/tmp/.auth
sudo scp -i /home/ubuntu/master21.pem ./jenkins/deploy/publish ubuntu@ec2-3-250-155-176.eu-west-1.compute.amazonaws.com:/tmp/publish
#sudo ssh -i /home/ubuntu/master21.pem  ubuntu@ec2-3-250-155-176.eu-west-1.compute.amazonaws.com && sudo /tmp/publish
