#!/bin/bash
while true; do
nc -kl -p 20801 > out.txt &
done
