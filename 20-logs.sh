#!/bin/bash

USERID=$(id -u)
GREEN="\e[32m"
NC="\e[0m" # No Color
YELLOW="\e[33m"
RED="\e[31m"
BLUE="\e[34m"
CYAN="\e[36m"

LOGS_FOLDER="/var/log/shell-script/logs"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo "script execution started at: $(date)" >> $LOG_FILE

if [ $USERID -ne 0]; then 
echo "ERROR:: run user with root priviliges" | tee -a $LOG_FILE #tee command is used upend the files
exit 1 #failure other 
fi

VALIDE() {
    if [ $? -ne 0 ]; then
    echo "$1 -e installation $R failed $N" |tee -a $LOG_FILE
    exit 1
else
    echo "$2 -e installed $G successfully $N" | tee -a $LOG_FILE
    fi
}

dnf list installed mysql &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install mysql -y &>>$LOG_FILE
    VALIDE $? "mysql"
else
    echo -e "$YELLOW mysql is already installed skip $NC" |tee -a $LOG_FILE
fi

dnf list installed nginx &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install nginx -y &>>$LOG_FILE
    VALIDE $? "nginx"
else
    echo -e "$YELLOW nginx is already installed skip $NC"
fi

#script 