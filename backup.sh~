#!/bin/bash

echo 'commit'

message=$(date)

if [ $1 ]
	then
		message=$1
fi

echo message

## create and push commit

git add .
git commit -m "message"
git push test
