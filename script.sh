#!/bin/bash

# Utils
sudo pacman -S git curl yay

sudo pacman -S base-devel gdb ninja gcc cmake libxcb xcb-proto xcb-util  
xcb-util-keysyms libxfixes libx11 libxcomposite xorg-xinput libxrender  
pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm  
xorg-xwayland cmake wlroots mesa git meson polkit 

# Hyprland + Hyprpaper + Waybar
echo "Installing hyprland.."
sudo pacman -S hyprland hyprpaper waybar

# Videodriver
pacman -S mesa

# TermnialEmulator + Shell
sudo pacman -S fish alacritty
chsh -s /usr/bin/fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install bobthefish

# Program launcher
sudo pacman -S rofi

# Software
sudo pacman -S firefox 

# Fonts
sudo pacman -S noto-fonts-emoji noto-fonts-extra
cp -r .fonts/ ~/
fc-cache -fv

# Configs
cp -r .config/ ~/