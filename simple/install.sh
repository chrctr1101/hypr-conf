#!/bin/sh

RED='\033[38;5;196m'
ORANGE='\033[38;5;208m'
GREEN='\033[0;032m'
BLUE='\033[0;034m'
NC='\033[0m'


echo -e "${BLUE}Start installing! You have 3 secounds to interrupt it!${NC}"

sleep 5s
echo -e "${RED}Warning! Please don't interrupt this script!\n${NC}"

for DIR in "fastfetch" "hypr" "kitty" "waybar" "wlogout" "wofi"; do
	sleep 0.1s
	cp -r ${DIR} ~/.config/
	echo -e "${GREEN}${DIR} is copyed to your config-file"
	sleep 0.1s
done

echo -e "${BLUE}\nEnd script! All is done!\n"
