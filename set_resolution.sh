#!/bin/bash
sed -i -e 's/#hdmi_group=1/hdmi_group=2/' /boot/config.txt
sed -i -e 's/#hdmi_mode=1/hdmi_mode=82/' /boot/config.txt
