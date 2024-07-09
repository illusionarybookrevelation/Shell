#!/bin/bash
#$*将所有参数看成一个整体，$@传递的每个参数区分对待
for i in "$*"
do
    echo $i
done

for j in "$@"
do
    echo $j
done