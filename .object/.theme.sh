#!/usr/bin/bash
PUT(){ echo -en "\033[${1};${2}H";}
clear
git clone https://github.com/zsh-users/zsh-autosuggestions /data/data/com.termux/files/home/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /data/data/com.termux/files/home/.oh-my-zsh/plugins/zsh-syntax-highlighting

echo -e "  █ █▄░█ █▀ ▀█▀ ▄▀█ █░░ █░░ █▀▀ █▀█" | lolcat
echo -e "  █ █░▀█ ▄█ ░█░ █▀█ █▄▄ █▄▄ ██▄ █▀▄" | lolcat
echo ""
PUT 4 14
echo -e "\e[92mBy\e[1;31m Raj Aryan\e[1;95m /\e[1;96m H4Ck3R0 "
PUT 6 3
echo
echo -e "\e[1;31m  [\e[32m√\e[31m] \e[100;92myoutube.com/c/h4ck3r0\e[0m"       
echo
echo -e "  \e[101;1;39mNOTE\e[0;1;33m Use upto 9 words\e[0m"
echo ""
cd ~/Termux-banner/.object
echo  ""
echo -e '\e[1;96m'
read -p '  Type Shell Name ❯ ' name
sed -e "s/\H4ck3r/$name/g" .h4Ck3r.zsh-theme > $HOME/.oh-my-zsh/themes/h4Ck3r.zsh-them
