#!/bin/bash
testuser=xiaolian
user=SkyRainMom
if grep $testuser /etc/passwd
then
	echo "This script files in the home directory of $testuser are:"
	echo
elif ls -d /home/$user
then
	echo "The user $user has a directory."
	echo "even though $user doesnt't have an account."
fi
echo "We are outside the if statement."
