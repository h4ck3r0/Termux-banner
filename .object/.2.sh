#!/usr/bin/bash
PUT(){ echo -en "\033[${1};${2}H";}
clear

echo -e "█ █▄░█ █▀ ▀█▀ ▄▀█ █░░ █░░ █▀▀ █▀█" | lolcat
echo -e "█ █░▀█ ▄█ ░█░ █▀█ █▄▄ █▄▄ ██▄ █▀▄" | lolcat
echo ""
PUT 6 13
echo -e "\e[92mBy\e[1;93m RajAryan\e[1;95m /\e[1;96m H4Ck3R0 "
PUT 7 3
echo
echo -e "\e[1;31m  [\e[32m√\e[31m] \e[1;91m by \e[1;36mRaj Aryan \e[93m/ \e[100;92myoutube.com/h4ck3r_raj\e[0m"    
echo
echo -e "  \e[101;1;39mNOTE\e[0;1;33m Use upto 9 words\e[0m"
echo ""
cd ~/Termux-banner/.object
echo -e '\e[1;96m'
read -p '  Type Banner Name ❯ ' name
sed -e "s/\ PROC/$name/g" .2zshrc > $HOME/.zshrc
