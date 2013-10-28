#!/bin/bash
cd /root/
dpkg-reconfigure locales
dpkg-reconfigure tzdata
apt-get update
hostname
hostname $(hostname -f)
hostname
git clone git://github.com/cheiff/rc
rc/install.sh
mkdir -p .ssh
chmod 700 .ssh
cat >.ssh/config<<EOF
ControlMaster auto
ControlPath /tmp/ssh_mux_%h_%p_%r
EOF
ssh-keygen -t dsa
eval `ssh-agent` && ssh-add ~/.ssh/id_dsa
echo "Add this key to gitosis"
cat .ssh/id_dsa.pub
read CONTINUE
tmux

