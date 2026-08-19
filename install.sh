#!/bin/sh

RED='\033[38;5;196m'
ORANGE='\033[38;5;208m'
GREEN='\033[0;032m'
BLUE='\033[0;034m'
NC='\033[0m'

cd ./packages/

for PKG1 in "fastfetch" "kitty" "fish" "hypr" "wlogout" "waybar" do
    cp -r ${PKG1} ~/.config/
    echo -e "${GREEN}${PKG1} is copied to your config directory${NC}"
done

cp -r wallpapers/ ~/
echo -e "${GREEN} Wallpapers is copied to your home directory${NC}"

echo -e "${ORANGE}Warning! Trying to copy sddm directory to your usr/share/ folder"
sleep 1s
sudo cp -r sddm/ /usr/share/
