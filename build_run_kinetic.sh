#!/bin/bash


#MYDIR="$(basename $(pwd))"

source ./load_env_var.sh
MYDIR="$(basename ${MYCOMPLETEDIR})"

echo "/home/pi/${MYDIR}/:/root/${MYDIR}/"

docker build -t ros-kin-test .

xhost +local:root

docker run --rm -it \
       --name kin-test \
       -v "/home/pi/.ros/:/root/.ros/" \
       -v "/home/pi/${MYDIR}/:/root/${MYDIR}/" \
       --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
       --env="QT_X11_NO_MITSHM=1" \
       --env="DISPLAY" \
       -w "/root/${MYDIR}/"  \
       ros-kin-test \
       /bin/bash

