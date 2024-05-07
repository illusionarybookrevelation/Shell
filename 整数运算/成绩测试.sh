#!/bin/bash
read -p "请输入您的第一门成绩：" number1
read -p "请输入您的第二门成绩：" number2
echo -n "总成绩："
expr $number1 + $number2