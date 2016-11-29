#!/bin/bash

#echo 'commit'

#message=$(date)

#if [ $1 ]
#	then
#		message=$1
#fi

myDate=`date`

echo -n "Do you wish to type message (y/n)? "
read answer

if echo "$answer" | grep -iq "^y" ;then
	echo -n "Please type in your message: "
	read myMessage
	message="$myDate $myMessage"
else
	message="$myDate"
fi

#echo $myDate
#echo $myMessage

## create and push commit

git status
git add .
git status
git commit -m "$message"
git push
