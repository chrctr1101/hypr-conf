#!/bin/sh

GREEN='\033[0;32m'
RED='\033[;31m'
YELLOW='\033[1;33m'
NC='\033[0m'
CYAN='\033[0;36m'

WAY=$(pwd)

LOG=$(logname)

echo -e "\n${GREEN} Start script${NC}"

sleep 2s;

for PKG in "kitty" "waybar" "hyprpaper" "hyprlock" "fastfetch" "make" "git" "firefox"; do
	if command -v ${PKG} &>/dev/null; then
		echo -e "${GREEN} ${PKG} is installed${NC}"
		sleep 1s
	else
		echo -e "${YELLOW} ${PKG} is not installed. Install...${NC}"
		sleep 1s
		echo "Y" | pacman -S ${PKG}
	fi
done

echo -e "${CYAN} (Re)installing fonts${NC}"
sleep 1s

echo "y" | pacman -S ttf-font-awesome otf-font-awesome ttf-jetbrains-mono noto-fonts noto-fonts-emoji




