#!/bin/bash
sed -i -e 's/@xscreensaver -no-splash/#@xscreensaver -no-splash/' /home/pi/.config/lxsession/LXDE-pi/autostart
echo @bash /home/pi/kiosk.sh >> /home/pi/.config/lxsession/LXDE-pi/autostart

mv /home/pi/Raspberry-NicheKiosk/kiosk.sh /home/pi/kiosk.sh
