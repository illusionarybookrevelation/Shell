#!/bin/bash
if [ $# -eq 1 ]
then
	fragment="parameter was"
else
	fragment="parameter were"
fi
echo $# $fragment supplied
exit
