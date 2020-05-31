#!/bin/bash



for file in `ls`
do
	if [[ -f $file ]]; then

		if [[ `cat $file | wc -c` -le $1 ]]; then
			echo $file
		fi
	fi
done
