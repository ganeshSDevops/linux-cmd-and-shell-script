#!/bin/bash

file_path="/var/log/syslog"

if [[ -r "$file_path" ]]
then
    echo " given file path $file_path has read permission"
else
    echo " given file path $file_path has not read permission"
fi

if [[ -w "$file_path" ]]
then
    echo " given file path $file_path has write permission"
else
    echo " given file path $file_path has not write permission"
fi

if [[ -x "$file_path" ]]
then
    echo " given file path $file_path has excutable permission"
else
    echo " given file path $file_path has excutable permission"
fi

if [[ -s "$file_path" ]]
then
    echo " given file path $file_path has not empty"
else
    echo " given file path $file_path has  empty"
fi

if [[ -d "/var/log" ]]
then
    echo " given  path $file_path :directory exist"
else
    echo " given  path /var/log : not directory exist"
fi

