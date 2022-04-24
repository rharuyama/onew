#!/bin/sh
if [ $# != 1 ]
  then
    echo "Usage:\n    onew [NAME]"
fi

cp -R /Users/ryoh/.onew/template/ $(pwd)/$1/
mv $(pwd)/$1/template.org $(pwd)/$1/$1.org
perl -pi -e "s/template/$1/" $(pwd)/$1/Makefile
