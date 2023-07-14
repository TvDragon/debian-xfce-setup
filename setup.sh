#!/bin/sh
#sudo nala install xfwm4 xfwm4-settings xfwm4-tweaks-settings xfwm4-workspace-settings xfce4-terminal xfce4-keyboard-settings -y
cd
sudo nala install xfwm4 xfce4-terminal xfce4-settings xfce4-taskmanager xfce4-notifyd xfce4-screenshooter ristretto xfce4-panel xfce4-panel-profiles xfce4-power-manager-plugins xfce4-pulseaudio-plugin xfce4-whiskermenu-plugin xfce4-windowck-plugin -y
sudo nala install pulseaudio thunar network-manager neovim curl lightdm -y
sudo systemctl enable lightdm
sudo systemctl set-default graphical.target
mkdir ~/.config
cp .xinitrc ~/
cp -r debian_test_setup/dotconfigs/* ~/.config/
