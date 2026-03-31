#!/bin/bash

var1=$1
var2=$2
operator=$3


case "$operator" in
    "+")
        result=$(( var1 + var2 ))
        echo "addition of var1 + var2 : $result"
        ;;
    "-")
        result=$(( var1-var2 ))
        echo "subtraction of var1-var2: $result"
        ;;
    *)
      echo "invalid operator"
      ;;
esac
