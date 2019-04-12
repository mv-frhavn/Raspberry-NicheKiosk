#!bin/bash

xset s off
xset -dpms
xset s noblank

unclutter -idle 0.5 -root &

sed -i 's/"exited_cleanly": "false"/"exited_cleanly": "true"' /home/pi/.config/chromium-browser/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences

/usr/bin/chromium-browser --noerrdialogs --disable-infobars --kiosk https://frgym.freshdesk.com/a/tickets/filters/all_tickets &

export DISPLAY=:0.0

while true; do
  xdotool keydown ctrl+r; xdotool keyup ctrl+r;
  sleep 900
done
