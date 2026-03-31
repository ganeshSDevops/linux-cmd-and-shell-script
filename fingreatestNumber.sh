#!/bin/bash

#find greatest number between a,b,c
a=10
b=12
c=45

if [[ $a -ge $b && $a -ge $c ]]
then
    echo "a is greatest or equal: $a"
elif [[ $b -ge $a && $b -ge $c ]]
then
    echo "b is greatest or equal: $b"
else
    echo "c is greatest or equal: $c"
fi