#!/bin/sh

echo "Starting tomux setup..."

# Update system (Arch-based)
sudo pacman -Syu --noconfirm

# Install essentials
sudo pacman -S --noconfirm neovim git curl htop tmux yay
yay -S --noconfirm ghostty

# Copy dotfiles
cp ./dotfiles/.bashrc ~/.bashrc
cp ./dotfiles/.vimrc ~/.vimrc

# Set environment variables
echo 'export EDITOR=nvim' >> ~/.bashrc

# Enable services
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

# Create workspace
mkdir -p ~/Projects ~/Games ~/Screenshots

echo "tomux Setup complete!"

