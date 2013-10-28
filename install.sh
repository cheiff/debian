#!/bin/bash
if [ $# != 4 ];then
  echo "Syntax: install name email repo saltmasterIP"
  exit
fi
cd /root/
dpkg-reconfigure locales
dpkg-reconfigure tzdata
apt-get update
apt-get install vim -y
hostname
hostname $(hostname -f)
hostname
git clone git://github.com/cheiff/rc
rc/install.sh
git clone git://github.com/cheiff/scripts
echo "PATH=\$PATH:/root/scripts/run">>.bashrc
echo "$4 saltmaster">>/etc/hosts
mkdir -p .ssh
chmod 700 .ssh
cat >.ssh/config<<EOF
ControlMaster auto
ControlPath /tmp/ssh_mux_%h_%p_%r
EOF
git config --global user.name "$1"
git config --global user.email "$2"


ssh-keygen -t dsa
eval `ssh-agent` && ssh-add ~/.ssh/id_dsa
echo "Add this key to gitosis"
cat .ssh/id_dsa.pub
read CONTINUE
git clone $3 -b debian
tmux


