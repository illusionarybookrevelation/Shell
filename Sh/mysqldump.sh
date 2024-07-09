#!/bin/bash
baseDir=D://Mysql-back

fileName=sakila_$(date +%Y%m%d_%H%M%S).sql

mysqldump -uroot -p1234 sakila > $baseDir//$fileName