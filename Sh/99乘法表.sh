#!/bin/bash
# 99相乘,学编程要会的第一个程序

for ((i=1;i<10;i++))
do
	# shellcheck disable=SC2004
	for ((j=1;j<=$i;j++))
	do
		# shellcheck disable=SC2007
		echo -n "$j x $i=$(( $j * $i )) "
	done
	echo
done
echo "Hello"