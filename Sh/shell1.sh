#!/bin/bash
echo $BASH_SUBSHELL

if (echo $BASH_SUBSHELL)
then
	echo "The subshell command operated successfully"
else
	echo "The subshell command was NOT successfully"
fi
