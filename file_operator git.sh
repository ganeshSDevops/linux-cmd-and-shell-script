#!/bin/bash

# File path to check
file_path="/var/log/syslog"

# ---------------------------
# Check if file exists first
# ---------------------------
if [[ -e "$file_path" ]]
then
    echo "$file_path exists"
else
    echo "$file_path does not exist"
    exit 1
fi

# ---------------------------
# Read permission
# ---------------------------
if [[ -r "$file_path" ]]
then
    echo "$file_path has read permission"
else
    echo "$file_path does NOT have read permission"
fi

# ---------------------------
# Write permission
# ---------------------------
if [[ -w "$file_path" ]]
then
    echo "$file_path has write permission"
else
    echo "$file_path does NOT have write permission"
fi

# ---------------------------
# Execute permission
# ---------------------------
if [[ -x "$file_path" ]]
then
    echo "$file_path has executable permission"
else
    echo "$file_path does NOT have executable permission"
fi

# ---------------------------
# Check if file is not empty
# ---------------------------
if [[ -s "$file_path" ]]
then
    echo "$file_path is NOT empty"
else
    echo "$file_path is empty"
fi

# ---------------------------
# Check directory
# ---------------------------
if [[ -d "/var/log" ]]
then
    echo "/var/log is a directory"
else
    echo "/var/log is NOT a directory"
fi

#####################################
These are called:

🎯 File Test Operators
Operator	Meaning
-e	File exists
-f	Regular file
-d	Directory
-r	Read permission
-w	Write permission
-x	Execute permission
-s	File exists and not empty

Interviewer may ask:

How will you check if log file exists and has read permission before processing?

Answer:

I use file test operators like -e and -r inside [[ ]] before performing operations.

Example:

if [[ -e "$file" && -r "$file" ]]

That is a strong answer.