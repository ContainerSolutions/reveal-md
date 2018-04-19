#!/usr/bin/env bash

NAME="training-modules-slides"

docker kill $NAME
docker rm $NAME
docker run --rm --name $NAME -d  -p 8000:1948 -v $PWD:/usr/src/app containersol/reveal-md