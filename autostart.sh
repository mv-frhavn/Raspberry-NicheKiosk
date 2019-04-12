#!/bin/bash
sed -i -e 's/@xscreensaver -no-splash/#@xscreensaver -no-splash/' /home/pi/.config/lxsession/LXDE-pi/autostart
echo @bash /home/pi/kiosk.sh > /home/pi/.config/lxsession/LXDE-pi/autostart

echo '#!bin/bash' > /home/pi/kiosk.sh
echo >> /home/pi/kiosk.sh

echo xset s off >> /home/pi/kiosk.sh
echo xset -dpms >> /home/pi/kiosk.sh
echo xset s noblank >> /home/pi/kiosk.sh
echo >> /home/pi/kiosk.sh

echo 'unclutter -idle 0.5 -root &' >> /home/pi/kiosk.sh
echo >> /home/pi/kiosk.sh

echo sed -i "'s/"exited_cleanly": false/"exited_cleanly": true/'" ~/.config/chromium-browser/Default/Preferences >> /home/pi/kiosk.sh
echo sed -i "'s/"exit_type":"Crashed"/"exit_type":"Normal"/'" /home/pi/.config/chromium/Default/Preferences >> /home/pi/kiosk.sh
echo >> /home/pi/kiosk.sh

echo '/usr/bin/chromium-browser --noerrdialogs --disable-infobars --kiosk https://frgym.freshdesk.com/a/tickets/filters/all_tickets &' >> /home/pi/kiosk.sh

echo 'export DISPLAY=:0.0' >> /home/pi/kiosk.sh

echo 'while true; do' >> /home/pi/kiosk.sh

echo 'xdotool keydown ctrl+r; xdotool keyup ctrl+r;' >> /home/pi/kiosk.sh
echo 'sleep 900' >> /home/pi/kiosk.sh
echo 'done' >> /home/pi/kiosk.sh
