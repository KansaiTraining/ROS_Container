FROM ros:kinetic-desktop-full

MAINTAINER David Aliaga

COPY . ~/sourceshell.sh

RUN apt-get -y update && apt-get -y install ros-$(rosversion -d)-turtlesim

RUN ["/bin/bash", "-c", "source /opt/ros/kinetic/setup.bash"]


