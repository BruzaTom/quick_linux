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
echo "./vmsplash.sh" >> ~/.bashrc
echo "vmtools installed successfully."

