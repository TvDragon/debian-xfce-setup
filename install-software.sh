#!/bin/sh

# This is a list of applications and software that I use which I install through a script.
# This script doesn't need to be run.

# Install applications
cd
cd Downloads/
# Setup bluetooth
sudo nala install bluez* -y
sudo nala install blueman -y
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
# Install text editors
sudo nala install nano neovim -y
# Install build-essentials for GCC/G++ compiler, clangd and make
sudo nala install build-essential valgrind clangd -y
# Install java
#sudo nala install openjdk-17-jdk -y
# Install vscode
sudo nala install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo nala install apt-transport-https -y
sudo nala update
sudo nala install code -y
# Install krita, gimp
sudo nala install krita gimp -y
# Install gparted
sudo nala install gparted -y
# Install mate-calculator
sudo nala install mate-calc -y
# Install spotify
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo nala update
sudo nala install spotify-client -y
# Install typora
sudo nala install software-properties-common -y
wget -qO - https://typoraio.cn/linux/public-key.asc | sudo tee /etc/apt/trusted.gpg.d/typora.asc
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo nala update
sudo nala install typora -y
# Install discord
wget "https://discord.com/api/download?platform=linux&format=deb" -O discord.deb
sudo nala install ./discord.deb -y
# Install onlyoffice
wget -O onlyoffice-desktop.deb "https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb"
sudo nala install onlyoffice-desktop.deb -y
# Install zoom
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo nala install ./zoom_amd64.deb -y
# Install pip3
sudo nala install python3-pip -y
# Install pip libraries - flask, pygame, jedi
sudo nala install python3-flask python3-pygame python3-jedi -y
# Install SDL2 Libraries
sudo nala install libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev -y
# Install neofetch
sudo nala install neofetch -y
# Install sqlitebrowser
sudo nala install sqlitebrowser -y
# Install firefox-esr
sudo nala install firefox-esr -y
# Install task manager
sudo nala install xfce4-taskmanager -y
# Install qemu+kvm virt-manager
# sudo nala install virt-manager qemu-kvm libvirt-clients libvirt-daemon-system virtinst bridge-utils ebtables -y
# sudo systemctl enable libvirtd
# sudo usermod -aG sudo libvirt-qemu	# Add libvirtd to sudo group
# sudo usermod -aG libvirt tvdragon	# Add tvdragon to libvirtd group
# Install redshift
sudo nala install redshift-gtk -y
# Install sdk
cd
sudo nala install curl unzip zip -y
curl -s "https://get.sdkman.io" | bash
# Needs to manually be typed below
# source "$HOME/.sdkman/bin/sdkman-init.sh"
# # Install gradle
# sdk install gradle 7.4
# sdk use gradle 7.4
# # Coc plugins
# nvim ~/.config/nvim/init.vim
# :PlugInstall
# cd ~/.local/share/nvim/plugged/coc.nvim
# npm install -g yarn
# yarn install
# Delete all directories and files in Downloads folder
cd ~/Downloads/
rm *.deb
