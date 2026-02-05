#!/bin/bash

#everything is string by default in bash
NUMBER1=100
NUMBER2=500
NAMES="ASHOK KUMAR"
SUM=$(($NUMBER1+$NUMBER2+$NAMES))

echo "sum is :$SUM"

#array data type this is SIZE4 declared 3 arrays
LEADER=("ASHOK" "KUMAR" "SINGH" "Akhil")
echo all leaders: ${LEADER[@]}
echo first leader: ${LEADER[0]}
echo second leader: ${LEADER[1]}

