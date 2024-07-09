#!/bin/bash
ver=$(/bin/bash -c "hostnamectl")
cs1="yum" ; cs2="remove"
ud1="apt" ; ud2="purge"

read -p "请输入操作(install/remove)：" var
if [[ $var = "install" ]] ; then
        if [[ $ver == *"centos"* ]] ; then
                $cs1 install -y $1
        elif [ $ver == *"ubuntu"* -o $ver == *"debian"* ] ; then
                $ud1 install -y $1
        fi
elif [[ $var = "remove" ]] ; then
        if [[ $ver == *"centos"* ]] ; then
                $cs1 $cs2 -y $1
        elif [ $ver == *"ubuntu"* -o $ver == *"debian"* ] ; then
                $ud1 $ud2 -y $1
        fi
 else
        echo "操作错误，请重新执行脚本"
fi