#!/data/data/com.termux/files/usr/bin/bash


clear
RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

echo -e "${RED} ███████ ▓█████▄▄▄█████▓ █    ██  ██▓███  " 
echo -e "${RED}▒██   ▒ ▓█   ▀▓  ██▒ ▓▒ ██  ▓██▒▓██░  ██▒" 
echo -e "${RED}░ ▓██▄   ▒███  ▒ ▓██░ ▒░▓██  ▒██░▓██░ ██▓▒" 
echo -e "${RED}  ▒   ██▒▒▓█   ▄░ ▓██▓ ░ ▓▓█  ░██░▒██▄█▓▒ ▒" 
echo -e "${RED}▒██████▒▒░▒████▒ ▒██▒ ░ ▒▒█████▓ ▒██▒ ░  ░" 
echo -e "${RED}▒ ▒▓▒ ▒ ░░░ ▒░ ░ ▒ ░░   ░▒▓▒ ▒ ▒ ▒▓▒░ ░  ░" 
echo -e "${RED}░ ░▒  ░ ░ ░ ░  ░    ░     ░░▒░ ░ ░ ░▒ ░      " 
echo -e "${RED}░  ░  ░    ░    ░        ░░░ ░ ░ ░░        " 
echo -e "${RED}     ░      ░  ░          ░              ${ENDCOLOR}    " 
                                           
echo  ""                                         
echo -e "\e[1;34m[*] \e[32minstall packages....\e[0m";                            
                                     
# --- Install System Packages ---
pkg update -y && pkg upgrade -y
pkg install zsh -y
pkg install git -y
pkg install toilet figlet exa -y
pkg install ruby -y
pkg install wget curl -y
gem install lolcat
