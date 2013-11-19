#!/bin/bash
if [ $# != 4 ];then
  echo "Syntax: install name repo saltmasterIP hostname"
  exit
fi
cd /root/
dpkg-reconfigure tzdata
apt-get update
hostname ${4}
git clone git://github.com/cheiff/rc
rc/install.sh
git clone git://github.com/cheiff/scripts
echo "PATH=\$PATH:/root/scripts/run">>.bashrc
echo "$3 saltmaster">>/etc/hosts
mkdir -p .ssh
chmod 700 .ssh
cat >.ssh/config<<EOF
ControlMaster auto
ControlPath /tmp/ssh_mux_%h_%p_%r
EOF
git config --global user.name "$1"
git config --global user.email "root@$4"


ssh-keygen -t dsa
eval `ssh-agent` && ssh-add ~/.ssh/id_dsa
echo "Add this key to gitosis"
cat .ssh/id_dsa.pub
read CONTINUE
sed -i "s/xAAA/$1/g" /etc/hosts
git clone $2 -b debian
tmux


