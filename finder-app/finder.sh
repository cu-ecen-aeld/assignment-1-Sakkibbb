#!/bin/bash

filesdir=$1
searchstr=$2

if [ $# -lt 2 ]
then
    echo "Error: Missing arguments"
    echo "Usage: $0 <filesdir> <searchstr>"
    exit 1
fi

if [ ! -d "$filesdir" ]
then
    echo "Error: $filesdir is not a directory on the filesystme"
    exit 1
fi

num_files=$(find "$filesdir" -type f | wc -l)

num_matches=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_matches"


