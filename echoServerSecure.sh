#!/bin/bash
# openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout mycert.pem -out mycert.pem
while true; do
sudo openssl s_server -accept 443 -cert mycert.pem -quiet
done
