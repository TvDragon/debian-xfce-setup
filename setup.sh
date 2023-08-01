#!/bin/sh

#Manually typed in CLI
# Manual (root user)
# su -
# usermod -aG sudo username
# apt install sudo
# Manual (username user)
# sudo apt update && sudo apt upgrade -y
# sudo apt install git -y
# git clone https://github.com/TvDragon/debian-xfce-setup

# Setting sources.list
yes | sudo cp -f sources.list /etc/apt/sources.list
sudo apt update && sudo apt upgrade -y
sudo apt install nala -y
# Desktop Setup
sudo nala install xfwm4 xinit xfce4-terminal xfce4-settings xfce4-session \
	xfce4-taskmanager xfce4-notifyd xfce4-screenshooter ristretto xfce4-panel \
	xfce4-panel-profiles xfce4-power-manager-plugins xfce4-pulseaudio-plugin \
	xfce4-wavelan-plugin xfce4-whiskermenu-plugin xfce4-windowck-plugin -y
sudo nala install pulseaudio thunar network-manager neovim curl -y
# Neovim autoload directory
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# Install Node.js and npm for CocInstal neovim plugins
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.bashrc
nvm install --lts
# Install universal ctags for neovim tagbar code navigation
sudo nala install universal-ctags -y
# Make directory so applications like spotify can be opened using rofi
sudo mkdir /usr/share/desktop-directories/
# Copy directories over
cd
mkdir .config .icons .themes .fonts
mkdir Desktop Downloads Pictures Videos
mkdir Pictures/Wallpapers
cp -r debian-xfce-setup/Wallpapers/* ~/Pictures/Wallpapers/
cp -r debian-xfce-setup/dotconfigs/* ~/.config/
cp -r debian-xfce-setup/icons/* ~/.icons/
cp -r debian-xfce-setup/themes/* ~/.themes/
cp -r debian-xfce-setup/fonts/* ~/.fonts/
cp debian-xfce-setup/.xinitrc ~/.
cp debian-xfce-setup/.vimrc ~/.
sudo cp -r debian-xfce-setup/terminal_themes/* /usr/share/xfce4/terminal/colorschemes/
cp -r debian-xfce-setup/nvim_plugged/* ~/.local/share/nvim/plugged/
sudo mkdir /boot/grub/themes
sudo cp -r debian-xfce-setup/grub_themes/* /boot/grub/themes/
sudo cp debian-xfce-setup/grub /etc/default/grub
# sudo nala install grub -y
sudo update-grub
sudo os-prober
# Set Display Manager
sudo nala install lightdm
sudo systemctl enable lightdm
sudo systemctl set-default graphical.target
