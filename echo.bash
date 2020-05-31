#!/bin/bash
trap `` INT #Ignore INT
#clear
stty -echo #turn off the echo mechanism
echo -n "Enter your passwd here> "
read secretPass
echo -en "\nConfirm your passwd here> "
read confirmPass
if [ "$secretPass" != "$confirmPass" ]; then
echo "Work on your short-term memory first"
stty echo
exit 1
fi
yourGuess=""
while [ "$yourGuess" != "$secretPass" ]; do
#clear
echo -en "\nEnter password to unlock screen> "
read yourGuess
done
#clear; 
echo "You're back in the system!"
stty echo
