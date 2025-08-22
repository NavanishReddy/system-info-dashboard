#!/bin/bash
#####
#Author: Navanish
#Date: 22, Aug-2025
# This script tells u about the system info...
#####
#set -x
set -e
set -o pipefail
echo "======================================================="
echo "   System Info Run at:$(date '+%Y-%b-%d %I:%M:%S %p')  "
echo "======================================================="
echo "=========System Information Dashboard========="
echo " Operating system  :$(uname -o)"
echo " Kernel Version    :$(uname -r)"
echo " Hostname          :$(hostname)"

echo "-------CPU & Memory-------"
# In cloud VMs, the CPU model name doesn't shows.....In local Servers no problem.....If you run this in local, please remove this comment and execute it.............echo " CPU Info        :$(lscpu | grep "Model Name" | sed 's/Model Name: [ /t]*//')"
echo " CPU Cores       :$(nproc)"
echo " Total Memory    :$(free -h | awk '/^Mem:/ {print $2}')"
echo " Used Memory     :$(free -h | awk '/^Mem:/ {print $3}')"
echo " Free Memory     :$(free -h | awk '/^Mem:/ {print $4}')"

echo "------- Disk Usage -------"
df -h --total  | awk 'NR==1 || /total/ {printf "%-20s %-10s %-10s %-10s %-5s\n", $1, $2, $3, $4, $5}'

echo "------- Top 7 Memory Consuming Processes -------"
ps aux --sort=-%mem | awk 'NR<=8 {printf "%-10s %-6s %-6s %-6s %s\n",$1,$2,$3,$4,$11}'

