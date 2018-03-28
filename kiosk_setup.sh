#!/bin/bash
read -p "Do you want to setup IP address? <yes/no> " prompt1
if [ $prompt1 = yes ]
	then	sh /home/pi/scripts/set_ip.sh
	else	echo "Skipping IP setup"
fi

read -p "Do you want to enable SSH? <yes/no> " prompt2
if [ $prompt2 = yes ]
	then	sh /home/pi/scripts/enable_ssh.sh
	else	echo "SSH will not enabled"
fi

read -p "Do you want to change the default password? <yes/no> " prompt3
if [ $prompt3 = yes ]
	then	sh /home/pi/scripts/change_password.sh
	else	echo "No password will be set"
fi

read -p "Would you like to set the resolution to full HD? <yes/no> " prompt4
if [ $prompt4 = yes ]
	then	sh /home/pi/scripts/set_resolution.sh
	else	echo "Resolution was not set"
fi

read -p "Do you want to run update and install script? <yes/no> " prompt5
if [ $prompt5 = yes ]
	then	sh /home/pi/scripts/setup_installs.sh
	else	echo "Update and install script was not runned"
fi

read -p "Do you want to setup autostartup? <yes/no> " prompt6
if [ $prompt6 = yes ]
	then	sh /home/pi/scripts/autostart.sh
	else	echo "Autostart was not setup"
fi

echo "Before all the settings can be applyed you need to restart the Pi"
read -p "Do you want to restart? <yes/no> " prompt7
if [ $prompt7 = yes ]
	then	sudo reboot
	else	echo "The system will not reboot"
fi

