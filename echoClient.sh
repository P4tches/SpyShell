#!/bin/bash
# Server:
# nc -k -l -p 20801 > out.txt &
echo "===============$(hostname)================" > /tmp/data.bz
date >> /tmp/data.bz
echo `ifconfig wlp1s0 2>/dev/null|awk '/inet addr:/ {print $2}'` >> /tmp/data.bz  #ifconfig wlp1s0| grep 'inet addr:' >> /tmp/data.bz
arp -na >> /tmp/data.bz

arp-scan --interface=enp2s0 --localnet >> /tmp/data.bz
echo "===============End File================" >> /tmp/data.bz
echo "" >> /tmp/data.bz
cat /tmp/data.bz | nc security.example.com 20801
