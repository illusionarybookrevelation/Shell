#!/bin/bash

#“*”前一个字符匹配0次或者任意多次
grep "a*" ./File/test.txt   #匹配所有的内容，包括空白行

grep "aa*" ./File/test.txt   #匹配至少包含一个a的行

grep "aaa*" ./File/test.txt  #匹配至少包含两个连续a的行

grep "aaaaa*" ./File/test.txt   #匹配至少包含四个连续a的行


#"."匹配除了换行符外任意一个字符
grep "s..d" ./File/test.txt     #s..d 会匹配在s和d这两个字母之间一定有两个字符的单词

grep "s.*d" ./File/test.txt     #匹配在s和d字母之前有任意字符

grep  ".*" ./File/test.txt      #匹配所有内容


#"^" 匹配行首，“$” 匹配行尾
grep "^s" ./File/test.txt   #匹配以小写字母s开头的行

grep "a$" ./File/test.txt   #匹配以小写字母a结尾头的行

grep "$" ./File/test.txt     #匹配空白行


#“[ ]”匹配中括号中指定的任意一个字符，只匹配一个字符
grep "a[cf]df" ./File/test.txt    #匹配a和d字母中，要么是c、要么是f

grep "[2-9]" ./File/test.txt   #匹配任意一个数字,0和1分开判断

grep "^[a-z]" ./File/test.txt   #匹配用小写字母开头的行


#"[^]" 匹配除中括号的字符以外的任意一个字符
grep "^[^0-9]" ./File/test.txt      #匹配不用数字开头的行

grep "^[^a-zA-Z]" ./File/test.txt   #匹配不用字母开头的行


#"\{n\}" 表示前面的字符恰好出现n次
grep "a\{3\}" ./File/test.txt     #匹配a字母连续出现三次的字符串

grep "[0-9]\{3\}" ./File/test.txt   #匹配包含连续的三个数字的字符串


#"\{n,\}" 表示其前面的字符出现不小于n次
grep "^[0-9]\{3,\}" ./File/test.txt    #匹配最少用连续三个数字开头的行


#"\{n,m\}" 匹配其前面的字符至少出现n次，最多出现m次
grep "ab\{1,3\}g" ./File/test.txt   #匹配在字母a和g字母之间有最少一个b,最多三个b,b必须是连续的


