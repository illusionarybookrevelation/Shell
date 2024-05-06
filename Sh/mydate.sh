#!/bin/bash
date1="Jan 1, 2020"
date2="May 1, 2020"

time1=$(date -d "$date1" +%s)
time2=$(date -d "$date2" +%s)
time3=$[$time2 - $time1]
secondsinday=$(expr 24 \* 60 \* 60)
day=$(expr $time3 / $secondsinday)

echo "The difference between $date1 and $date2 is $day days"
