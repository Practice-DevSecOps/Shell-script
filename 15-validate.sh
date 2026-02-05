#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "please run this script as root user"
    exit 1 # failure is another than zero
fi

VALIDATE () {
    if [ $? -ne 0 ]; then
   echo "$1 installation failed"
   exit 1
else
   echo "$2 installed successfully"
fi
}

dnf install mysql -y
VALIDATE $? "mysql"

dnf install nginx -y
VALIDATE $? "nginx"

dnf install mongodb -y
VALIDATE $? "mongodb"
