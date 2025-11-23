#!/bin/sh

echo "Starting tomux setup..."

# Update system (Arch-based)
sudo pacman -Syu --noconfirm

# Install essentials
sudo pacman -S --noconfirm neovim git curl htop tmux yay
#python
yay -S --noconfirm ghostty

# Copy dotfiles
cp ./dotfiles/.bashrc ~/.bashrc
cp ./dotfiles/.vimrc ~/.vimrc

# Set environment variables
# and .bashrc
echo 'export EDITOR=nvim' >> ~/.bashrc
echo "export PS1='\u@\h:\w\$ '" >> ~/.bashrc # Full user@host:path
if ! grep -q "CLI Splash" ~/.bashrc; then
cat << 'EOF' >> ~/.bashrc
# CLI Splash
echo -e "\e[1;36m"
echo " █████╗ ██████╗  ██████╗██╗  ██╗              "
echo "██╔══██╗██╔══██╗██╔════╝██║  ██║              "
echo "███████║██████╔╝██║     ███████║              "
echo "██╔══██║██╔══██╗██║     ██╔══██║              "
echo "██║  ██║██║  ██║╚██████╗██║  ██║              "
echo "╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝              "
echo "                                              "
echo "████████╗ ██████╗ ███╗   ███╗██╗   ██╗██╗  ██╗"
echo "╚══██╔══╝██╔═══██╗████╗ ████║██║   ██║╚██╗██╔╝"
echo "   ██║   ██║   ██║██╔████╔██║██║   ██║ ╚███╔╝ "
echo "   ██║   ██║   ██║██║╚██╔╝██║██║   ██║ ██╔██╗ "
echo "   ██║   ╚██████╔╝██║ ╚═╝ ██║╚██████╔╝██╔╝ ██╗"
echo "   ╚═╝    ╚═════╝ ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝"
echo "  Neovim : \$(nvim --version | head -n1)"
echo "  Python : \$(python3 --version 2>&1)"
echo "  Tmux   : \$(tmux -V)"
echo "  Git    : \$(git --version)"
echo -e "\e[0m"
EOF
fi

# Enable services
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

# Create workspace
mkdir -p ~/Projects ~/Games ~/Screenshots

echo "tomux Setup complete!"

