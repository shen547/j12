#!/bin/bash
if [ `docker ps | grep j12  | wc -l`  = 1 ]
then
        docker stop j12
        docker rm  j12
fi
