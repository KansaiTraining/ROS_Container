FROM ros:kinetic

MAINTAINER David Aliaga

COPY . ~/sourceshell.sh

RUN apt-get -y update && apt-get -y install ros-$(rosversion -d)-turtlesim
RUN apt-get -y update && apt-get -y install ros-$(rosversion -d)-rqt-graph 

RUN ["/bin/bash", "-c", "source /opt/ros/kinetic/setup.bash"]


