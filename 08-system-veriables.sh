#!/bin/bash

echo "all veriables passed to script are: $*"
echo "total number of veriables passed to script are: $#"
echo "script name is: $0"
echo "first veriable is: $1"
echo "second veriable is: $2"
echo "third veriable is: $3"
echo "last veriable is: ${!#}"
echo "script name is: $0"
echo "who is running this script: $USER"
echo "current working directory is: $PWD"
echo "process id of this script is: $$"
echo "last command exit status is: $?"


sleep 30
echo "last command of PID of last background process is: $!"  