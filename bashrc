#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#alias'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias steam='flatpak run com.valvesoftware.Steam'

export PATH="$HOME/.local/bin:$PATH"
export EDITOR=nvim
export PS1='\u@\h:\w\$ ' # Full user@host:path

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
echo "  Neovim : $(nvim --version | head -n1)"
echo "  Python : $(python3 --version 2>&1)"
echo "  Tmux   : $(tmux -V)"
echo "  Git    : $(git --version)"
echo -e "\e[0m"
