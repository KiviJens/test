#!/bin/bash

#echo 'backup magento database an commit tree'
#mysqldump -uadmin -p`cat /etc/psa/.psa.shadow` magento  > db_backup/magento.sql

#message=$(date)

#if [ $1 ]
#	then
#		message=$1
#fi

myDate=`date`

echo -n "Do you wish to a customized message (y/n)? "
read answer

if echo "$answer" | grep -iq "^y" ;then
	echo -n "Please type in your message: "
	read myMessage
	message="$myDate $myMessage"
else
	message="$myDate"
fi

## create and push commit

git status
sleep 2
git add .
git status
sleep 2
git commit -m "$message"
git status
sleep 2
git push
sleep 2
echo "backup complete ..."
