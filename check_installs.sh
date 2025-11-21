#!/bin/bash
# versions.sh - check installed versions of essentials (blue output)

BLUE="\033[34m"
RESET="\033[0m"

echo -e "${BLUE}Checking versions of essentials...${RESET}"

# Neovim
if command -v nvim >/dev/null 2>&1; then
  echo -e "${BLUE}Neovim: $(nvim --version | head -n 1)${RESET}"
else
  echo -e "${BLUE}Neovim: not installed${RESET}"
fi

# Git
if command -v git >/dev/null 2>&1; then
  echo -e "${BLUE}Git: $(git --version)${RESET}"
else
  echo -e "${BLUE}Git: not installed${RESET}"
fi

# Python
if command -v python >/dev/null 2>&1; then
  echo -e "${BLUE}Python: $(python --version 2>&1)${RESET}"
elif command -v python3 >/dev/null 2>&1; then
  echo -e "${BLUE}Python3: $(python3 --version 2>&1)${RESET}"
else
  echo -e "${BLUE}Python: not installed${RESET}"
fi

# Python-dateutil
if python -c "import dateutil" >/dev/null 2>&1; then
  echo -e "${BLUE}python-dateutil: installed${RESET}"
else
  echo -e "${BLUE}python-dateutil: not installed${RESET}"
fi

# Curl
if command -v curl >/dev/null 2>&1; then
  echo -e "${BLUE}Curl: installed${RESET}"
else
  echo -e "${BLUE}Curl: not installed${RESET}"
fi

# Htop
if command -v htop >/dev/null 2>&1; then
  echo -e "${BLUE}Htop: $(htop --version | head -n 1)${RESET}"
else
  echo -e "${BLUE}Htop: not installed${RESET}"
fi

# Yazi
if command -v yazi >/dev/null 2>&1; then
  echo -e "${BLUE}Yazi: $(yazi --version)${RESET}"
else
  echo -e "${BLUE}Yazi: not installed${RESET}"
fi

# Base-devel (check for make)
if command -v make >/dev/null 2>&1; then
  echo -e "${BLUE}base-devel: present (make found)${RESET}"
else
  echo -e "${BLUE}base-devel: not installed${RESET}"
fi

echo -e "${BLUE}Version check complete.${RESET}"

