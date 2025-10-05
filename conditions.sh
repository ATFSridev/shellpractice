#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ];then
	echo "please run the script with root ID"
	exit 1  #failure is other than 0
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
	echo "error ::: Installing failure"
	exit 1
else
	echo " mysql installed ....."

fi
