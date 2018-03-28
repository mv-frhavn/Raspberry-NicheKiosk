#!/bin/bash

read -p "Enter IP address : " ip
read -p "Enter prefix : " prefix
read -p "Enter gateway : " gateway
read -p "Enter DNS server IP : " dns

echo "Do you want to add these settings to the inteface? "
echo "$ip/$prefix\n$gateway\n$dns"
read -p "yes or no : " add_ip

if [ $add_ip = yes ]
	then	echo interface eth0 >> /etc/dhcpcd.conf
		echo static ip_address=$ip/$prefix >> /etc/dhcpcd.conf
		echo static domain_name_servers=$dns >> /etc/dhcpcd.conf
		echo static routers=$gateway >> /etc/dhcpcd.conf
		echo "The settings was applied"
	else 	echo "The settings was not applied"
fi
echo "Do you want to restart the interface?"
read -p "yes or no : " restart_eth
if [ $restart_eth = yes ]
	then 	sudo ifconfig eth0 down
		sleep 2; 
		sudo ifconfig eth0 up
		echo "The interface was restarted"
	else	echo "The interface was not restarted"
fi
sleep 2;
clear

