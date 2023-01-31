#!/bin/bash
echo $PWD
source devel/setup.bash
rosrun image_transport republish raw in:=/camera/image_color out:=camera/image_raw