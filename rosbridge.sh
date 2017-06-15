#!/bin/sh

source /opt/ros/<rosdistro>/setup.bash

roslaunch rosbridge_server rosbridge_websocket.launch &
