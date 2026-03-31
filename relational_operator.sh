#!/bin/bash

a=10
b=20

if [ $a -eq $b ]
then
    echo "$a -eq $b :a is equal to b"
else
    echo "$a -eq $b :a is not equal to b"
fi

echo "-------*****------"

if [ $a -ne $b ]
then
    echo "$a -ne $b :a is not equal to b"
else
    echo "$a -ne $b :a is equal to b"
fi

echo "-------*****------"

if [ $a -gt $b ]
then
    echo "$a -gt $b :a is greater than  b"
else
    echo "$a -gt $b :a is not greater than  b"
fi

echo "-------*****------"

if [ $a -lt $b ]
then
    echo "$a -lt $b :a is less than  b"
else
    echo "$a -lt $b :a is not less than  b"
fi
