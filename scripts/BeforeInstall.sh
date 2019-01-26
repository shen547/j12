#!/bin/bash

$(aws ecr get-login --no-include-email --registry-ids 204065533127 --region ap-northeast-1)

if [ `docker images | grep cc104devops-repo | wc -l`  = 1 ]
then
        docker rmi cc104devops-repo
        docker pull 204065533127.dkr.ecr.ap-northeast-1.amazonaws.com/j12
else
        docker pull 204065533127.dkr.ecr.ap-northeast-1.amazonaws.com/j12 
fi
