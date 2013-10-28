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
ssh-keygen -t dsa
eval `ssh-agent` && ssh-add ~/.ssh/id_dsa
echo "Add this key to gitosis"
cat .ssh/id_dsa.pub


