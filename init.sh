#!/bin/bash
cd /etc/apt
mv sources.list sources.list.bak
echo 'deb http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse

deb http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse

deb http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse

deb http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse

deb http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse
' > sources.list
apt update
yes "" | apt install vim wget curl gcc g++ git
yes "" | apt install network-manager-openconnect

# cd ~
# ln -s /home/gu/桌面 /home/gu/desktop
# ln -s /home/gu/下载 /home/gu/download
# cd ~/download
# wget https://dl.google.com/go/go1.15.6.linux-amd64.tar.gz
# tar -C /usr/local -xzf go1.15.6.linux-amd64.tar.gz
# echo '
# export PATH=$PATH:/usr/local/go/bin
# ' >> ~/.zshrc
