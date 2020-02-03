#!/bin/bash
p=443
i=10000
while [ $i -lt 70000 ];
do
  port=`expr $i + $p`
  ssserver -p $port -k $YOUR_PASS -m aes-256-cfb --user root --pid-file /opt/ssserver/ssserver_$port.pid --log-file /opt/ssserver/ssserver_$port.log -d start -v --ffast-open
  i=$[$i+10000]
done
