#!/bin/bash

function install() {
    installLibraries
    installDrivers
    installUtils
    installWayland
    installWM
    installPrograms
    installTermial
    installTheme
    makeAudio
    installConfigs
}

function makeAudio() {
    sudo pacman -S sof-firmware alsa-utils
    cp modprobe.d/alsa-base.conf /etc/modprobe.d/
}

function installLibraries() {
    sudo pacman -S polkit libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite org-xinput libxrender pixman cairo pango seatd libxkbcommon xcb-util-wm wlroots
}

function installDrivers() {
    sudo pacman -S mesa
}

function installUtils() {
    sudo pacman -S meson git yay curl base-devel ninja gcc cmake 
}

function installWayland() {
    sudo pacman -S xorg-xwayland
}

function installWM() {
    sudo pacman -S hyprland hyprpaper waybar wayland-protocols
}

function installPrograms() {
    sudo pacman -S firefox discord telegram-desktop neofetch htop wofi pulseaudio
}

function installTermial() {
    sudo pacman -S fish alacritty
}

function installTheme() {
    sudo pacman -S capitaine-cursors noto-fonts-emoji noto-fonts-extra
}

function installConfigs() {
    gsettings set org.gnome.desktop.interface cursor-theme capitaine-cursors

    chsh -s /usr/bin/fish

    cp -r .fonts/ ~/
    cp -r .config/ ~/

    fc-cache -fv
}

install()