#!/bin/bash

input_count=$#  # get count of all input 

if [[ "$input_count" -ne 3 ]]; then
    echo "Pass all necessary input values to script"
    exit 1
fi 

# read input value passed to script
operator=$1
num1=$2
num2=$3

case "$operator" in
    add) 
        result=$(( num1 + num2 ))
        echo "Addition of $num1 + $num2 = $result"
        ;;
    sub) 
        result=$(( num1 - num2 ))
        echo "Subtraction of $num1 - $num2 = $result"
        ;;
    mul) 
        result=$(( num1 * num2 ))
        echo "Multiplication of $num1 * $num2 = $result"
        ;;
    *) 
        echo "Invalid operator (use add/sub/mul)"
        ;;
esac