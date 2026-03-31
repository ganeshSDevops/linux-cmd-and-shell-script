#!/bin/bash

str1="hello"
str2="bye"
str3="hello"

if [[ $str1 == $str2 ]]
then
    echo "$str1 == $str2 :str1 is equal to str2"
else
    echo "$str1 == $str2 :str1 is not equal to str2"
fi

if [[ $str1 != $str2 ]]
then 
    echo "$str1 != $str2 :str1 is not equal to str2"
else
    echo "$str1 != $str2 :str1 is equal to str2"
fi

if [[ -z $str1 ]]
then
    echo " $str1 : string is not empty"
fi

empty_str=""
if [[ -z $empty_str ]]
then
    echo " $empty_str : string is empty"
fi

if [[ -n $empty_str]]
then 
    echo "$empty_str : not empty string "
else
    echo "$empty_str :  empty"
fi

