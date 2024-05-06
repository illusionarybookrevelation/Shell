#!/bin/bash
#安装vsftpd
var1=/etc/yum.repos.d/rhel.repo
if [ -e $var1 ]
then
	dnf -y install vsftpd
else
	cat [AppStream] \
	name=AppStream \
	baseurl=https://mirrors.aliyun.com/centos-stream/9-stream/AppStream/x86_64/os/ \
	gpgcheck=0 \
	enabled=1 \
	[BaseOS] \
	name=BaseOS \
	baseurl=https://mirrors.aliyun.com/centos-stream/9-stream/BaseOS/x86_64/os/ \
	gpgcheck=0 \
	enabled=1 > $var1

	dnf -y install vsftpd
fi

var2="anon_root=/opt/ftpdir"
for $var2 in cat /etc/vsftpd/vsftpd.conf
then
	vi /etc/vsftpd/vsftpd.conf
	


