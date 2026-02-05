#/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "Please run this script as root user"
    exit 1 #failure is another than zero
fi
dnf install mysql -y

if [$? -ne 0 ]; then
   echo "mysql installation failed"
   exit 1
else
   echo "mysql installed successfully"
   exit 0
fi