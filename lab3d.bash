#1/bin/bash

if [[ $# == 0 ]]; then
	echo "This shell script compress files with a specific extension"
	echo "Call Syntax: minimize <extension list>"
	echo "Exacmple: mininize doc jpg"
	exit
fi

for ext in $*; do
	for file in `ls *.$ext`; do
		gzip $file

	done
done
