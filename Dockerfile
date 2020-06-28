FROM ros:kinetic

MAINTAINER David Aliaga

COPY . ~/sourceshell.sh

RUN ["/bin/bash", "-c", "source /opt/ros/kinetic/setup.bash"]


