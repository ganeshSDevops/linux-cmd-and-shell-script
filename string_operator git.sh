#!/bin/bash

# Initialize strings
str1="hello"
str2="bye"
str3="hello"

# ---------------------------
# Equality check
# ---------------------------
if [[ "$str1" == "$str2" ]]
then
    echo "$str1 == $str2 : str1 is equal to str2"
else
    echo "$str1 == $str2 : str1 is not equal to str2"
fi

# ---------------------------
# Not equal check
# ---------------------------
if [[ "$str1" != "$str2" ]]
then 
    echo "$str1 != $str2 : str1 is not equal to str2"
else
    echo "$str1 != $str2 : str1 is equal to str2"
fi

# ---------------------------
# Check if string is empty (-z)
# ---------------------------
if [[ -z "$str1" ]]
then
    echo "str1 is empty"
else
    echo "str1 is not empty"
fi

# ---------------------------
# Empty string example
# ---------------------------
empty_str=""

if [[ -z "$empty_str" ]]
then
    echo "empty_str is empty"
fi

# ---------------------------
# Check if string is NOT empty (-n)
# ---------------------------
if [[ -n "$empty_str" ]]
then 
    echo "empty_str is not empty"
else
    echo "empty_str is empty"
fi