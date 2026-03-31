#!/bin/bash

# ---------------------------------------------------
# Script Name: numeric_comparison_demo.sh
# Purpose   : Demonstrate numeric comparison operators
# Author    : Ganesh (DevOps Practice)
# ---------------------------------------------------

# Assigning numeric values (No spaces around =)
a=10
b=20

# ------------------ EQUAL (-eq) -------------------
# -eq : Checks if two numbers are equal
if [ "$a" -eq "$b" ]
then
    echo "$a -eq $b : a is equal to b"
else
    echo "$a -eq $b : a is not equal to b"
fi

echo "-------*****------"

# ------------------ NOT EQUAL (-ne) -------------------
# -ne : Checks if two numbers are NOT equal
if [ "$a" -ne "$b" ]
then
    echo "$a -ne $b : a is not equal to b"
else
    echo "$a -ne $b : a is equal to b"
fi

echo "-------*****------"

# ------------------ GREATER THAN (-gt) -------------------
# -gt : Checks if first number is greater than second
if [ "$a" -gt "$b" ]
then
    echo "$a -gt $b : a is greater than b"
else
    echo "$a -gt $b : a is not greater than b"
fi

echo "-------*****------"

# ------------------ LESS THAN (-lt) -------------------
# -lt : Checks if first number is less than second
if [ "$a" -lt "$b" ]
then
    echo "$a -lt $b : a is less than b"
else
    echo "$a -lt $b : a is not less than b"
fi

echo "-------*****------"

# ------------------ GREATER OR EQUAL (-ge) -------------------
# -ge : Checks if first number is greater than or equal to second
if [ "$a" -ge "$b" ]
then
    echo "$a -ge $b : a is greater than or equal to b"
else
    echo "$a -ge $b : a is less than b"
fi

echo "-------*****------"

# ------------------ LESS OR EQUAL (-le) -------------------
# -le : Checks if first number is less than or equal to second
if [ "$a" -le "$b" ]
then
    echo "$a -le $b : a is less than or equal to b"
else
    echo "$a -le $b : a is greater than b"
fi


##########################################
🧠 Why Add Quotes?

If variable becomes empty:

Without quotes:

[[  == bye ]]

❌ Can cause issues

With quotes:

[[ "" == "bye" ]]

✔ Safe

Interviewers like when you follow safe scripting practices.

#########################################