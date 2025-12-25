#!/bin/bash

# Get arguments
writefile=$1
writestr=$2

# Check if both arguments are provided
if [ $# -lt 2 ]
then
    echo "Error: Missing arguments"
    echo "Usage:  $0 <writefile> <writestr>"
    exit 1
fi

# Create directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Write to file (overwrites if exists)
echo "$writestr" > "$writefile"

# Check if write was successful
if [ $? -ne 0 ]
then
    echo "Error: Could not create file $writefile"
    exit 1
fi
