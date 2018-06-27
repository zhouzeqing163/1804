#!/bin/bash
#挂载光盘
mkdir /dvd	2>/dev/null
mount /dev/cdrom  /dvd   2>/dev/null
#删除旧配置
rm -f /etc/yum.repos.d/*.repo
#添加新配置
echo '
[dvd]
name=rhel7
baseurl=file:///dvd
enabled=1
gpgcheck=0' > /etc/yum.repos.d/dvd.repo

echo yum仓库创建完毕
