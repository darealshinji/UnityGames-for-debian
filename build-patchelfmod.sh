#!/bin/sh

set -e

DIR=`mktemp -d`

cd $DIR
wget "https://github.com/darealshinji/debian/archive/master.tar.gz"
tar xvf master.tar.gz

cd debian-master/utils/patchelfmod-git && make PBUILDER=0

