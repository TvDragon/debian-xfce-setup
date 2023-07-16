#!/bin/sh
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
dbus-launch --exit-with-x11 startxfce4
startx &
