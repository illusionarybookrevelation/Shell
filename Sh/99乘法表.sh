#!/bin/bash
# 99���,ѧ���Ҫ��ĵ�һ������

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