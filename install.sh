#!/bin/sh

RED='\033[38;5;196m'
ORANGE='\033[38;5;208m'
GREEN='\033[0;032m'
BLUE='\033[0;034m'
NC='\033[0m'

CONF=$1

if [ "$1" = "--simple" ]; then
	echo -e "${BLUE}Start installing 'Simple'! You have 3 secounds to interrupt it!${NC}"
	sleep 5s
	echo -e "${RED}Warning! Please don't interrupt this script!\n${NC}"
	cd ./simple/	

	for DIR in "fastfetch" "hypr" "kitty" "waybar" "wlogout" "wofi"; do
		sleep 0.1s 
		cp -r ${DIR} ~/.config/
		echo -e "${GREEN}${DIR} is copyed to your config-file"
		sleep 0.1s
	done
	
	echo -e "${BLUE}\nAll is done!\nYour Hyprland session will reboot now!"
	sleep 1s
	hyprctl dispatch 'hl.dsp.exit()'

elif [ "$1" = "--gotic" ]; then
	echo -e "${BLUE}Start installing 'Gotic'! You have 3 secounds to interrupt it!${NC}"
	sleep 5s
	echo -e "${RED}Warning! Please don't interrupt this script!\n${NC}"
	cd ./gotic/	

	for DIR in "fastfetch" "hypr" "kitty" "waybar" "wlogout" "wofi"; do
		sleep 0.1s
		cp -r ${DIR} ~/.config/
		echo -e "${GREEN}${DIR} is copyed to your config-file"
		sleep 0.1s
	done
	
	echo -e "${BLUE}\nAll is done!\nYour Hyprland session will reboot now!"
	sleep 1s
	hyprctl dispatch 'hl.dsp.exit()'
	
elif [ "$1" = "--anime" ]; then
	if [ "$2" = "b_red" ]; then
		echo -e "${BLUE}Start installing 'Anime (Bright Red)'! You have 3 secounds to interrupt it!${NC}"
		sleep 5s
		echo -e "${RED}Warning! Please don't interrupt this script!\n${NC}"
		cd ./anime/b_red/	

		for DIR in "fastfetch" "hypr" "kitty" "waybar" "wlogout" "wofi"; do
			sleep 0.1s
			cp -r ${DIR} ~/.config/
			echo -e "${GREEN}${DIR} is copyed to your config-file"
			sleep 0.1s
		done
	
		echo -e "${BLUE}\nAll is done!\nYour Hyprland session will reboot now!"
		sleep 1s
		hyprctl dispatch 'hl.dsp.exit()'
	fi



elif [ "$1" = "--help" ]; then
	echo -e "\n${BLUE} Help${NC}"
	echo -e "How to use: ./install.sh  [CONFIGURATION] {COLOR}\n\n"
	echo -e "Configurations:\n"
	echo -e "'--simple' -- simple view, like now-installed hyprland"
	echo -e "'--gotic'  -- gotic view, grey and sad"

	echo -e "'--anime' -- anime view, there are some types of colors
	'b_red' -- bright red"


	echo -e "'--help' -- to show this help\n"
else
	echo -e "${RED}Incorret config input!\nType './install.sh --help' and select correct argument${NC}"
fi
