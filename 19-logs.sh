#!/bin/bash

# path : /var/log/shell-script/logs/19.logs.sh
 #redirection
 # ls -l sending to output.log command
 # ls -l > output.log  # if it success it will store other wise won't
  # mkdir -p /var/log/shell-script/logs
  # pis if already file exist it will redirect to over there other wise the cmd will get fail 
  #& is used t up end to both output and error
  # in this 19-log.sh you don'need .sh then you can remove .sh using echo "19-logs.sh" | cut -d "." -f1
  #script name echo "19-logs.sh" | cut -d "." -f1
  #
