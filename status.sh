#!/bin/bash


#Script for monitoring status of server 

#1.to check with which user we are logged in 
echo "====================================================="
echo "Date:"
date
echo
echo "Server Uptime is :"
uptime
echo
echo "User:"
whoami
echo
echo "====================================================="
echo
#2.to check disk space utilization 
echo "====================================================="
echo "Disk space utilization:"
echo
df -h
echo "====================================================="
echo
#3.to check memory utilization 
echo "====================================================="
echo "Memory utilization:"
echo
free -mh
echo
free -mh | xargs | awk '{print $6,$7,$13}'
echo
free -mh | xargs | awk '{print $3,$7,$10}'
echo
free -mh | xargs | awk '{print $2,$7,$9}'
echo
echo "====================================================="
#4.to check top $5 processes running 
echo
top -b | head -$5
echo
echo "====================================================="


