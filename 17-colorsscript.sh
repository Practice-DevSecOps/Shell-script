#!/bin/bash
GREEN="\e[32m"
NC="\e[0m" # No Color
YELLOW="\e[33m"
RED="\e[31m"
BLUE="\e[34m"
CYAN="\e[36m"


USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
echo "ERROR:: run user with root priviliges"
exit 1 #failure other 
fi

VALIDE() {
    if [ $? -ne 0 ]; then
    echo "$1 -e installation $R failed $N"
    exit 1
else
    echo "$2 -e installed $G successfully $N"
    fi
}

dnf install mysql -y
VALIDE $? "mysql"

dnf install nginx -y
VALIDE $? "nginx"


