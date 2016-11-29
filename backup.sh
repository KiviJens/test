#!/bin/bash

echo 'commit'

#message=$(date)

#if [ $1 ]
#	then
#		message=$1
#fi

set myMassege=%date:~6,4%-%date:+3,2%-%date:~0,2%
echo myMassage

#echo message

## create and push commit

git add .
git commit -m "message"
git push
