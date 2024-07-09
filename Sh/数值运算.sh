#!/bin/bash
#命令：declare [+/-][选项]变量名
#选项：
#   -     给变量设定类型属性
#   +     取消变量的类型属性
#   -i    将变量声明为整数型（integer）
#   -x    将变量声明为环境变量
#   -p    显示指定变量的被声明的类型

aa=111; bb=222
declare -i cc=$aa+$bb; echo $cc

#dd的值是aa和bb的和。注意“+”号左右两侧必须有空格
dd=$(expr $aa + $bb); echo $dd

#$((运算式))
ff=$(( $aa+$bb )); echo $ff

#$[运算式]
ee=$[ $aa+$bb ]; echo $ee