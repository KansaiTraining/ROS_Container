#!/bin/bash

#MYDIR=basename $(pwd)
MYDIR="$(basename $(pwd))"

echo "/home/pi/${MYDIR}/:/root/${MYDIR}/"

docker build -t ros-kin-test .
docker run --rm -it \
       --name kin-test \
       -v "/home/pi/.ros/:/root/.ros/" \
       -v "/home/pi/${MYDIR}/:/root/${MYDIR}/" \
       ros-kin-test \
      /bin/bash

