#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "please run this script as root user"
    exit 1 # failure is another than zero
fi
dnf install mysql -y

if [ $? -ne 0 ]; then
   echo "mysql installation failed"
   exit 1
else
   echo "mysql installed successfully"
fi

dnf install nginx -y
if [ $? -ne 0 ]; then
   echo "nginx installation failed"
   exit 1
else
   echo "nginx installed successfully"
fi

dnf install mongodb-org -y

if [ $? -ne 0 ]; then
   echo "mongodb installation failed"
   exit 1
else
   echo "mongodb installed successfully"
fi