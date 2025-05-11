#!/bin/bash

# install packages
echo "[+] Installing packages..."
sudo pacman -Syu --noconfirm
xargs -a packages.txt sudo pacman -S --noconfirm

# copy configs
echo "[+] Copying config files..."
mkdir -p ~/.config
cp -r config/* ~/.config/

# set zsh as default shell
echo "[+] Setting zsh as default shell..."
chsh -s /bin/zsh

# make sure Hyprland config is executable (just in case)
chmod +x ~/.config/hypr/hyprland.conf

echo "[✓] Done. You can now reboot and login to Hyprland."
