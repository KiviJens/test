#!/bin/bash

echo 'commit'

#message=$(date)

message=`date +%Y-%m-%d`

if [ $1 ]
	then
		message=$1
fi

echo $1
echo $message

## create and push commit

git add .
git commit -m "$message"
git push
