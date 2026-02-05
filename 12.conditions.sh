#!/bin/bash

NUMBER=$1

read n
if [ $($n % 2) -eq 0 ]; then
    echo "given number $n is even"
else
    echo "given number $n is odd"
fi 