#!/bin/bash
var1=./*.sh
for var2 in $var1
do
	if [ -x $var2 ]
	then
		echo &> /dev/null
	else
		chmod +x $var2
	fi
done
