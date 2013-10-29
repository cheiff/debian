#!/bin/bash
echo "Template IP:"
read TPLIP
IP=$(/sbin/ifconfig  | grep -i 'inet addr:'| grep -v '127.0.0.1' | cut -d: -f2 | awk '{ print $1}')
sed -i 's/$TPLIP/$IP/g' /etc/network/interfaces
cat /etc/network/interfaces
echo "Rebooting..."
sleep 4
shutdown -r now
