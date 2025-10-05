#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne =];then
	echo "please run the script with root ID"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
	echo "error ::: Installing failure"
else
	echo " mysql installed ....."

fi
