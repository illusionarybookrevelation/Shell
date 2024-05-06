#!/bin/bash
file="states.txt"
IFS=$'\n'
for state in $(cat $file)
do
	echo "Visit beautiful $state"
done
