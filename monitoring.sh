#!/bin/bash
wall "	----------------------------------------------------------
	#Architecture	: $(uname -a)
	#Physical CPUs	: $(grep -c 'physical id' /proc/cpuinfo)
	#Virtual CPUs	: $(grep -c processor /proc/cpuinfo)
	#Memory Usage	: $(free --mega | grep Mem | awk '{print $3}')/$(free --mega | grep Mem | awk '{print $2}')MB ($(free -k | grep Mem | awk '{printf("%.2f%%"), $3/$2*100}'))
	#Disk Usage	: $(df -BM | grep '^/dev/' | awk '{ut += $3} END {print ut}')/$(df -BG | grep '^/dev/' | awk '{tt += $2} END {print tt}')Gb ($(df -BM | grep '^/dev/' | awk '{ut += $3} {tt += $2} END {printf("%.2f%%", ut/tt*100)}'))
	#CPU Load	: $(iostat | grep -A 1 idle | grep '^ ' | awk '{printf("%.2f%%\n", 100 - $NF)}')
	#Last Boot	: $(who -b | awk '{printf $3 " " $4}')
	#LVM Use	: $(if [ $(lsblk | grep -c "lvm") -eq 0 ]; then echo no; else echo yes; fi)
	#Connections TCP: $(netstat -t | grep -c "ESTABLISHED") ESTABLISHED
	#User log	: $(who -u | awk '{print $1}' | uniq | wc -l)
	#Network	: IP $(hostname -I) ($(cat /sys/class/net/enp0s3/adress))
	#Sudo		:
	----------------------------------------------------------"
