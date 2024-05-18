#!/usr/bin/env bash
set -x
export CMD_PATH=$(cd `dirname $0`; pwd)
export PROJECT_NAME="${CMD_PATH##*/}"
echo $PROJECT_NAME
cd $CMD_PATH
ls -al
cd demo
. ~/.os.shellrc
jabba use corretto@17
echo "hello world"


mvn  install

ls -al
cd target

cp demo-0.0.1-SNAPSHOT.jar ~/
file ~demo-0.0.1-SNAPSHOT.jar


