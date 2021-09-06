#!/usr/bin/bash

architecture=$(uname -a)
physical_processor=$(grep 'cpu cores' /proc/cpuinfo | tr -d 'cpu cores \t:')
virtual_processor=$(grep -c '^processor' /proc/cpuinfo)
total_memory=$(free -m | awk '/Mem:/ {print $2}')
used_memory=$(free -m | awk '/Mem:/ {print $3}')
percent_used_memory=$(free -m | awk '/Mem:/ {printf("%.2f"), $3/$2*100}')
total_disk=$(df -h --total | awk '/total/ {print $2}')
used_disk=$(df -h --total | awk '/total/ {print $3}')
percent_used_disk=$(df -h --total | awk '/total/ {print $5}')
cpu_load=$(top -bn1 | awk '/Cpu/ {print $2}')
last_boot=$(who -b | awk '{print $3" "$4}')
total_lvm=$(lsblk | grep -c lvm)

if [ $total_lvm -gt 0 ]
then
	lvm='yes'
else
	lvm='no'
fi

tcp_connections=$(ss | grep -c tcp)
total_users=$(who -u | awk '{print $1}' | sort | uniq | wc -l)
ip=$(hostname -I)
mac=$(ip addr show | awk '/link\/ether/ {print $2}')
sudo_total=$(cat /var/log/sudo.log | grep -c -i "command=")

wall << .
	#Architecture: $architecture
	#CPU physical : $physical_processor
	#vCPU : $virtual_processor
	#Memory Usage: $used_memory/${total_memory}MB (${percent_used_memory}%)
	#Disk Usage: $used_disk/${total_disk}GB (${percent_used_disk}%)
	#CPU load: $cpu_load%
	#Last boot: $last_boot
	#LVM use: $lvm
	#Connections TCP : $tcp_connections ESTABLISHED
	#User log: $total_users
	#Network: IP $ip ($mac)
	#Sudo : $sudo_total cmd
.