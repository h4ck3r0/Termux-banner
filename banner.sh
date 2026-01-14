#!/data/data/com.termux/files/usr/bin/bash

clear
RED="\e[31m"
GREEN="\e[32m"
CYAN="\e[1;36m"
YELLOW="\e[1;33m"
ENDCOLOR="\e[0m"

banner_header() {
    clear
    echo -e "${RED} ▀▀█▀▀ ░░ ▒█▀▀█ █▀▀█ █▀▀▄ █▀▀▄ █▀▀ █▀▀█ "
    echo -e "${RED} ░▒█░░ ▀▀ ▒█▀▀▄ █▄▄█ █░░█ █░░█ █▀▀ █▄▄▀ "
    echo -e "${RED} ░▒█░░ ░░ ▒█▄▄█ ▀░░▀ ▀░░▀ ▀░░▀ ▀▀▀ ▀░▀▀ ${ENDCOLOR} "
    echo ""
    echo -e "${RED}  [${GREEN}√${RED}] ${CYAN}By Raj Aryan ${YELLOW}/ ${GREEN}Youtube.com/c/H4Ck3R0${ENDCOLOR}"
    echo ""
}

install_requirements() {
    echo -e "\n${YELLOW} [*] Installing Requirements...${ENDCOLOR}"
    
    wget -O $PREFIX/share/figlet/ASCII-Shadow.flf https://raw.githubusercontent.com/xero/figlet-fonts/master/ANSI%20Shadow.flf
    
    rm -rf ~/.termux/colors.properties
    rm -rf /data/data/com.termux/files/usr/etc/motd
    
    chsh -s zsh
    
    if [ -d "$HOME/Termux-banner/.object" ]; then
        cp -r $HOME/Termux-banner/.object/.colors.properties ~/.termux/colors.properties
        cp -r $HOME/Termux-banner/.object/.termux.properties ~/.termux/termux.properties
        bash $HOME/Termux-banner/.object/.theme.sh
        
        echo -e "${GREEN} [√] Setup Complete!${ENDCOLOR}"
        sleep 2
        
        cd $HOME/Termux-banner/.object
        bash .banner.sh
    else
        echo -e "${RED} [!] Error: .object folder not found.${ENDCOLOR}"
        sleep 3
        main_menu
    fi
}

run_banner_tool() {
    if [ -f "$HOME/Termux-banner/.object/.banner.sh" ]; then
        cd $HOME/Termux-banner/.object
        bash .banner.sh
    else
        echo -e "${RED} [!] .banner.sh not found inside .object!${ENDCOLOR}"
        sleep 2
        main_menu
    fi
}

update_tool() {
    echo -e "\n${YELLOW} [*] Updating Tool...${ENDCOLOR}"
    cd $HOME
    rm -rf ~/Termux-banner
    git clone https://github.com/h4ck3r0/Termux-banner
    echo -e "${GREEN} [√] Update Complete.${ENDCOLOR}"
    cd ~/Termux-banner
    bash banner.sh
}

invalid_input() {
    echo -e "${RED} Invalid input!!!${ENDCOLOR}"
    sleep 1
    main_menu
}

main_menu() {
    banner_header
    echo -e "${RED}[${ENDCOLOR}1${RED}]${GREEN} Necessary Setup"
    echo -e "${RED}[${ENDCOLOR}2${RED}]${GREEN} Banners Tool"
    echo -e "${RED}[${ENDCOLOR}3${RED}]${GREEN} Update"
    echo -e "${RED}[${ENDCOLOR}4${RED}]${GREEN} Exit"
    echo ""
    echo -e -n "${CYAN} Choose Option : ${ENDCOLOR}"
    
    read a
    case $a in
        1) install_requirements ;;
        2) run_banner_tool ;;
        3) update_tool ;;
        4) exit ;;
        *) invalid_input ;;
    esac
}

main_menu
