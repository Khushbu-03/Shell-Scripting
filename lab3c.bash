#!/bin/bash

if [[ $# != 4 ]]; then
	echo "Synopsis: replaceWord <inFile> <word> <repWord> <outFile>"
	exit
fi

numlines=`cat $1 | wc -l`
i=1
while [[ $i -le $numlines ]]; do
  for word in `head -$i $1 | tail -1`; do
	if [[ $word == $2 ]]; then 
		word=$3
	fi
	echo -n "$word" >> $4
  done

  echo >> $4
  let "i = $i +1"
done	 	
