#!/bin/bash

docker build -t ros-kin-test .
docker run --rm -it \
       --name kin-test \
       -v "/home/pi/.ros/:/root/.ros/" \
       -v "/home/pi/first_ws/:/root/first_ws/" \
       ros-kin-test \
      /bin/bash

