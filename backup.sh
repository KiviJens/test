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
#else
	#echo "Nein danke"
fi

#echo $myDate
#echo $myMessage

## create and push commit

git add .
git commit -m "$myDate $myMessage"
git push
