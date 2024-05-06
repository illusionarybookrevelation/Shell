#!/bin/bash
testuser=xiaolian
user=SkyRainMom
if grep $testuser /etc/passwd
then
	echo "This script files in the home directory of $testuser are:"
	ls /home/$testuser/*.sh
	echo
else
	echo "The user $testuser does not exist on this system."
	if ls -d /home/$user
	then
		echo "However,$user has a directory."
	fi
fi
echo "We are outside the if statement."
