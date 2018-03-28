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
echo "The IP will be active after the reboot later"
sleep 2;
clear

