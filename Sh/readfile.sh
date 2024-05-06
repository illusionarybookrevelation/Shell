#!/bin/bash
count=1
cat ./test.txt | while read line
do
	echo "Line $count: $line"
	count=$[ $count + 1 ]
done
echo "Finished proessing the file."
exit
