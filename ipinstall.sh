#!/bin/bash
echo "Template IP:"
read TPLIP
echo "New VM IP:"
read IP
sed -i 's/$TPLIP/$IP/g' /etc/network/interfaces
cat /etc/network/interfaces
echo "Rebooting..."
sleep 4
shutdown -r now
