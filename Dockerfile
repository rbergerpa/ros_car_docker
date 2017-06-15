FROM ros:indigo-robot
MAINTAINER "Robert Berger"

RUN apt-get update && apt-get install -y wget git gitk emacs

RUN apt-get install -y ros-indigo-navigation ros-indigo-map-server ros-indigo-joy ros-indigo-ackermann-msgs ros-indigo-move-base-msgs ros-indigo-ecl ros-indigo-ar-track-alvar ros-indigo-yocs-msgs ros-indigo-rosserial-arduino ros-indigo-rosserial

RUN echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list
RUN wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add - && apt-get update && apt-get install -y ros-indigo-gazebo7-ros-pkgs

RUN apt-get install -y ros-indigo-rosbridge-server

RUN mkdir /.gazebo && chmod 1777 /.gazebo
RUN mkdir /.sdformat && chmod 1777 /.sdformat
RUN mkdir /.ros && chmod 1777 /.ros

WORKDIR /ros_car

ENV DISPLAY :0

cmd ["bash"]
