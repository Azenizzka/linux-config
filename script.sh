#!/bin/bash

# Install
sudo pacman -S git curl yay base-devel gdb ninja gcc cmake libxcb xcb-proto xcb-util  
xcb-util-keysyms libxfixes libx11 libxcomposite xorg-xinput libxrender  
pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm  
xorg-xwayland cmake wlroots mesa meson polkit hyprland hyprpaper waybar
capitaine-cursorsfish alacritty wofi firefox discord noto-fonts-emoji noto-fonts-extra
pulseaudio telegram-desktop

gsettings set org.gnome.desktop.interface cursor-theme capitaine-cursors 

# TermnialEmulator + Shell
chsh -s /usr/bin/fish

cp -r .fonts/ ~/
fc-cache -fv

# Configs
cp -r .config/ ~/