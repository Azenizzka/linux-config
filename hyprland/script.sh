# !/bin/bash

function install() {
    enableMultilib

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

function enableMultilib() {
    sudo cp pacman.conf /etc
}

function makeAudio() {
    sudo pacman -S sof-firmware alsa-utils
    sudo cp modprobe.d/alsa-base.conf /etc/modprobe.d/
}

function installLibraries() {
    sudo pacman -S polkit libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite org-xinput libxrender pixman cairo pango seatd libxkbcommon xcb-util-wm wlroots
}

function installDrivers() {
    sudo pacman -S mesa
}

function installUtils() {
    sudo pacman -S meson git yay curl base-devel ninja gcc cmake  polkit-gnome
}

function installWayland() {
    sudo pacman -S xorg-xwayland
}

function installWM() {
    sudo pacman -S hyprland hyprpaper waybar wayland-protocols
}

function installPrograms() {
    sudo pacman -S wofi pulseaudio mako grim wl-clipboard
}

function installTermial() {
    sudo pacman -S fish alacritty
}

function installTheme() {
    sudo pacman -S noto-fonts-emoji noto-fonts-extra
}

function installConfigs() {
    chsh -s /usr/bin/fish

    cp -r .fonts/ ~/
    cp -r .config/ ~/

    fc-cache -fv
}

install
