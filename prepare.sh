#!/bin/sh 

GREEN='\033[0;32m'
RED='\033[;31m'
YELLOW='\033[1;33m'
NC='\033[0m'
CYAN='\033[0;36m'

WAY=$(pwd)

LOG=$(logname)

echo -e "\n${GREEN} Start script${NC}"

sleep 1.5s;

for PKG in "kitty" "hyprland" "waybar" "awww" "hyprlock" "fastfetch" "cmake" "git" "firefox" "fish" "sddm" "pipewire"; do
	if command -v ${PKG} &>/dev/null; then
		echo -e "${GREEN} ${PKG} is installed${NC}"
		sleep 0.5s
	else
		echo -e "${YELLOW} ${PKG} is not installed. Install...${NC}"
		sleep 0.5s
		echo "Y" | sudo pacman -S ${PKG}
	fi
done

echo -e "${CYAN} (Re)installing fonts${NC}"
sleep 1s

echo "y" | sudo pacman -S ttf-font-awesome otf-font-awesome ttf-jetbrains-mono noto-fonts noto-fonts-emoji 




