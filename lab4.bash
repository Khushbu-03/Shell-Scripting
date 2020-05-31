#!/bin/bash
echo -n "Enter file name> "
read file
if [ ! -e $file ]; then
echo "Sorry, $file does not exist."
elif [ ! -w $file ]; then
echo "You have no write permission on $file''
if [ -O $file ]; then
chmod u+w $file #(grant write permission)
echo "Write permission granted"
else
echo "Write permission cannot be granted"
echo "because you don't own this file"
fi
else
ls >> $file
echo "More input has been appended"
fi
