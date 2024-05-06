#!/bin/bash
echo
echo "Using the shift method:"
count=1
while [ -n "$1" ]
do
	echo "Parameter #$count = $1"
	count=$[ $count + 1 ]
	shift
	echo "$1"
done
echo
