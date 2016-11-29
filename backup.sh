#!/bin/bash

echo 'commit'

#message=$(date)

myDate=`date`

#if [ $1 ]
#	then
#		message=$1
#fi

echo -n "Is this a good question (y/n)? "
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo "Ja bitte"
else
    echo "Nein danke"
fi

echo $myDate

## create and push commit

git add .
git commit -m "$myDate"
git push
