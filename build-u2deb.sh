#!/bin/sh

set -e

DIR=`mktemp -d`

cd $DIR
wget "https://github.com/darealshinji/debian-packaging/archive/master.tar.gz"
tar xvf master.tar.gz

cd debian-packaging-master/games/unityengine2deb && make PBUILDER=0

