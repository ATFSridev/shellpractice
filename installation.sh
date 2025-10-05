#!/bin/bash

#install mongoDB, nginx mysql

USER=$(id -u)

if [ $USER -ne 0 ] ; then
	echo "not a root user"
	exit 1

fi

dnf install mysql -y

if [ $? -ne 0 ]; then
	echo "ERROR : insatlling mysql is failed"
	exit 1
else
	echo "installed mysql"

fi


dnf install nginx -y
if [ $? -ne 0 ]; then
        echo "ERROR : insatlling nginx is failed"
        exit 1
else
        echo "installed nginx"

fi
dnf install python3 -y


if [ $? -ne 0 ]; then
        echo "ERROR : insatlling mysql is failed"
        exit 1
else
        echo "installed  python"

fi





