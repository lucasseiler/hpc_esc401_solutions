#!/bin/bash

FILE=$1
if  [[ -z "$1" ]] ; then
	echo "Filename argument is missing"
elif ! [[ -f "$1" ]] ; then
	echo "File does not exist"
else
	while IFS= read -r LINE ; do
    echo -e "$LINE\n\n"
done < $1
fi