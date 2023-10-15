# !/bis/sh

sudo journalctl --vacuum-size=100M

sudo pacman -Suy
sudo yay -Suy

sudo pacman -Scc

sudo pacman -Rsn $(pacman -Qdtq)

rm -rf ~/.cache/*