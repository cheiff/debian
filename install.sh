#!/bin/bash
dpkg-reconfigure locales
dpkg-reconfigure tzdata
apt-get update
hostname
hostname $(hostname -f)
hostname
ssh-keygen -t dsa
echo "Add this key to gitosis"
cat .ssh/id_dsa.pub


