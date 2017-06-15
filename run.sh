#!/bin/sh

DIR=`dirname $0`
DIR=`(cd $DIR && pwd)`

if [ -z $UID ] ; then
UID=`id -u`
fi

GID=`id -g`

XSOCK=/tmp/.X11-unix/X0

docker run --name ros_car -u "${UID}:${GID}" -v $XSOCK:$XSOCK -v ${DIR}:/ros_car --rm -i -t ros_car
