#!/bin/bash

#Print out all directories and files 

if [[ $# != 0 ]]; then
	echo "Call Syntax: $0"
	exit
fi

echo "Here are all the directories"
for AA in `ls`
do	
	if [ -d "$AA" ]; then
		echo $AA
	fi

done

echo "Here are all the files"
for AA in `ls`
do
	if [ -f "$AA" ]; then
		echo $AA
	fi
done

