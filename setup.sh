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

# Create workspace
mkdir -p ~/Projects ~/Games ~/Screenshots

echo "tomux Setup complete!"

