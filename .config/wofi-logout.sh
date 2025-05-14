#!/bin/bash

CHOICE=$(printf "Lock\nLogout\nReboot\nShutdown" | wofi --dmenu --prompt "Power")

case "$CHOICE" in
  Lock)
    swaylock
    ;;
  Logout)
    swaymsg exit
    ;;
  Reboot)
    systemctl reboot
    ;;
  Shutdown)
    systemctl poweroff
    ;;
esac
