#!/bin/bash
cd /root/
dpkg-reconfigure tzdata
apt-get update
git clone git://github.com/cheiff/rc
rc/install.sh
git clone git://github.com/cheiff/scripts
echo "PATH=\$PATH:/root/scripts/run">>.bashrc
mkdir -p .ssh
chmod 700 .ssh
cat >.ssh/config<<EOF
ControlMaster auto
ControlPath /tmp/ssh_mux_%h_%p_%r
EOF

tmux

