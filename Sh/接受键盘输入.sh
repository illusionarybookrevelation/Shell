#!/bin/bash
read -t 30 -p "Please input your name: " name
#提示后，并等待30秒，把用户的输入保存到变量name中
echo $name

read -s -t 30 -p "Please input your age: " age
#年龄是隐私，所以用-s 选项隐藏输入
echo -e "\n"
#-e表示隐藏输出的\n
echo $age

read -n 1 -t 30 -p "Please select your gender[M/F]: " gender
#-n表示read命令只接受指定的字符数
echo -e "\n"
echo "Sex is $gender"