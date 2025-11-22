#!/bin/bash
# essentials.sh - bootstrap essentials for Arch VM

set -e

echo "running vmtools.sh..."
sudo pacman -Syu --noconfirm

echo "Installing vmtools..."
sudo pacman -S --needed --noconfirm \
  neovim \
  git \
  python \
  python-dateutil \
  curl \
  htop \
  yazi \
  base-devel

echo 'export EDITOR=nvim' >> ~/.bashrc
echo "export PS1='\u@\h:\w\$ '" >> ~/.bashrc # Full user@host:path
echo "./.config/tomux/check_installs.sh" >> ~/.bashrc

echo "./tomux/check_installs.sh"

echo "Cloning Neovim config..."
# Replace with your actual repo URL
if [ ! -d "$HOME/.config/nvim" ]; then
  git clone https://github.com/BruzaTom/tomsnvim.git "$HOME/.config/nvim"
else
  echo "Neovim config already exists at ~/.config/nvim"
fi

echo "vmtools installed successfully."

