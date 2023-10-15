# !/bis/sh

sudo pacman -Suy
sudo yay -Suy

sudo pacman -Scc

sudo pacman -Rsn $(pacman -Qdtq)
