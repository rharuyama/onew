#!/bin/sh
cp -R /Users/ryoh/.org-template/template/ $(pwd)/$1/
mv $(pwd)/$1/template.org $(pwd)/$1/$1.org
