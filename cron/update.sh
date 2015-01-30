#!/bin/sh

cd `dirname $0`
ipAddress=$(curl ifconfig.me 2>/dev/null)
clientFile='home.tblk/client.conf'
sed -i -e "s/^remote \([^ ]\+\) \([^ ]\+\)$/remote $ipAddress \2/" $clientFile 
