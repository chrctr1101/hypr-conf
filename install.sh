#!/bin/sh

RED='\033[38;5;196m'
ORANGE='\033[38;5;208m'
GREEN='\033[0;032m'
BLUE='\033[0;034m'
NC='\033[0m'

cd ./packages/

for PKG1 in "fastfetch" "kitty" "fish" "hypr" "wlogout" "waybar"; do
    cp -r $PKG1 ~/.config/
    echo -e "${GREEN}${PKG1} is copied to your config directory${NC}"
done

echo -e "${BLUE}Now we will change new shell (fish)\nEnter your password and then \"/bin/fish\"${NC}"
sleep 1s
chsh

cp -r wallpapers/ ~/
echo -e "${GREEN}Wallpapers is copied to your home directory${NC}"

echo -e "${ORANGE}Warning! Trying to copy sddm directory to your usr/share/ folder\nand sddm.conf to /etc${NC}"
sleep 1s
sudo cp -r sddm/ /usr/share/
sudo cp sddm.conf /etc

echo -e "${ORANGE}Warning! Trying to copy wayland-sessions to your /usr/share/ folder${NC}"
sleep 1s
sudo cp -r wayland-sessions/ /usr/share/

echo -e "${ORANGE}Warning! Trying to enable services${NC}"

sudo systemctl enable sddm --now

echo -e "${GREEN}All is done! Your system will reboot now!"
sleep 1s
reboot
