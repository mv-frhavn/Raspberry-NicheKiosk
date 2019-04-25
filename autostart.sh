#!/bin/bash
sed -i -e 's/@xscreensaver -no-splash/#@xscreensaver -no-splash/' /etc/xdg/lxsession/LXDE-pi/autostart
echo @bash /home/pi/kiosk.sh >> /etc/xdg/lxsession/LXDE-pi/autostart

mv /home/pi/Raspberry-NicheKiosk/kiosk.sh /home/pi/kiosk.sh
