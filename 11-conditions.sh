#!/bim/bash

 NUMBER=$1 

 if [ $NUMBER -lt 10 ]; then
    echo "given number $NUMBER is less than 10"
 else
    echo "given number $NUMBER is greater than or equal to 10"
 fi

 #-gt greater than
    #-lt less than
    #-ge greater than equal to 