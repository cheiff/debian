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
ssh-add
echo "Add this key to gitosis"
cat .ssh/id_dsa.pub


