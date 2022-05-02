#!/bin/bash
set -ex

if [ $# != 1 ];
  then
    echo "Usage:\n    onew [NAME]"
fi

workdir=$(pwd)
filename=$1

cp -R /Users/ryoh/.onew/template/ $workdir/$filename/
mv $workdir/$filename/template.org $workdir/$filename/$filename.org
perl -pi -e "s/template/$filename/" $workdir/$filename/Makefile
