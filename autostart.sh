#!/bin/bash
sed -i -e 's/@xscreensaver -no-splash/#@xscreensaver -no-splash/' /home/pi/.config/lxsession/LXDE-pi/autostart

echo @xset s off >> /home/pi/.config/lxsession/LXDE-pi/autostart
echo @xset -dpms >> /home/pi/.config/lxsession/LXDE-pi/autostart
echo @xset s noblank >> /home/pi/.config/lxsession/LXDE-pi/autostart
echo '@sed -i 's/"exited_cleanly": false/"exited_cleanly": true/' ~/.config/chromium-browser/Default/Preferences' >> /home/pi/.config/lxsession/LXDE-pi/autostart
echo @chromium-browser --noerrdialogs --disable-infobars --kiosk https://www.lectio.dk/lectio/282 --incognito >> /home/pi/.config/lxsession/LXDE-pi/autostart

