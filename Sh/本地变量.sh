#!/bin/bash
#变量定义
name=test
#变量调用
echo $name

#变量叠加
aaa=123
aaa="$aaa"456
aaa="${aaa}"789
echo $aaa