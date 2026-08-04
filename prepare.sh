#!/bin/sh

GREEN='\033[0;32m'
RED='\033[;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

WAY=$(pwd)

echo -e "\n${GREEN} Start script${NC}"

sleep 2s;

for PKG in "kitty" "waybar" "hyprpaper" "hyprlock" "fastfetch"; do
	if command -v ${PKG} &>/dev/null; then
		echo -e "${GREEN} ${PKG} is installed${NC}"
		sleep 1s
	else
		echo -e "${YELLOW} ${PKG} is not installed. Install...${NC}"
		sleep 1s
		echo "Y" | pacman -S ${PKG}
	fi
done

if command -v pacman &>/dev/null; then
	pacman -S --noconfirm ttf-font-awesome otf-font-awesome ttf-jetbrains-mono noto-fonts-emoji 
fi
#sudo pacman -S kitty waybar hyprpaper hyprlock fastfetch ttf-font-awesome otf-font-awesome ttf-jetbrains-mono noto-fonts noto-fonts-emoji

#sudo pacman -S --needed base-devel

#cd ~

#git clone https://aur.archlinux.org/yay.git

#cd yay/

#makepkg -si


