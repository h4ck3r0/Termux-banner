#!/data/data/com.termux/files/usr/bin/bash

TEMPLATE_DIR="$HOME/Termux-banner/.object"
TARGET_FILE="$HOME/.zshrc"

RED="\e[31m"
GREEN="\e[32m"
CYAN="\e[1;36m"
YELLOW="\e[1;33m"
ENDCOLOR="\e[0m"

clear_screen() {
    clear
}

header() {
    clear_screen
    echo -e "${RED}╔╗"
    echo -e "${RED}║║"
    echo -e "${RED}║╚═╦══╦═╗╔═╗╔══╦═╦══╗"
    echo -e "${RED}║╔╗║╔╗║╔╗╣╔╗╣║═╣╔╣══╣"
    echo -e "${RED}║╚╝║╔╗║║║║║║║║═╣║╠══║"
    echo -e "${RED}╚══╩╝╚╩╝╚╩╝╚╩══╩╝╚══╝ ${ENDCOLOR} "
    echo ""
    echo -e "${RED}  [${GREEN}√${RED}] ${CYAN}By Raj Aryan ${YELLOW}/ ${GREEN}youtube.com/h4ck3r0${ENDCOLOR}"
    echo ""
}

update_banner() {
    style_number=$1
    
    if [[ ! -f "$TEMPLATE_DIR/${style_number}.zshrc" ]]; then
        echo -e "\n${RED}  [!] Error: File '$TEMPLATE_DIR/${style_number}.zshrc' not found!${ENDCOLOR}"
        sleep 2
        main_menu
        return
    fi

    echo -e "\n${CYAN}  Enter the Name to display in the banner:${ENDCOLOR}"
    read -p "  ❯ " user_name

    echo -e "\n${GREEN}  [*] Applying Style $style_number...${ENDCOLOR}"

    sed "s/PROC/$user_name/g" "$TEMPLATE_DIR/${style_number}.zshrc" > "$TARGET_FILE"

    echo -e "${GREEN}  [√] Success! Restart Termux to see changes.${ENDCOLOR}"
    exit 0
}

update_tool() {
    echo -e "\n${YELLOW}  [*] Updating Tool...${ENDCOLOR}"
    rm -rf "$HOME/Termux-banner"
    git clone https://github.com/h4ck3r0/Termux-banner "$HOME/Termux-banner"
    echo -e "${GREEN}  [√] Update Complete.${ENDCOLOR}"
    exit 0
}

main_menu() {
    header
    echo -e "${RED}[${ENDCOLOR}1${RED}]${GREEN} Dog"
    echo -e "${RED}[${ENDCOLOR}2${RED}]${GREEN} Gun"
    echo -e "${RED}[${ENDCOLOR}3${RED}]${GREEN} Zombie"
    echo -e "${RED}[${ENDCOLOR}4${RED}]${GREEN} Bear"
    echo -e "${RED}[${ENDCOLOR}5${RED}]${GREEN} Banner V2"
    echo -e "${RED}[${ENDCOLOR}6${RED}]${GREEN} Bat"
    echo -e "${RED}[${ENDCOLOR}7${RED}]${GREEN} Skull"
    echo -e "${RED}[${ENDCOLOR}8${RED}]${GREEN} DedSec"
    echo -e "${RED}[${ENDCOLOR}9${RED}]${GREEN} Update Tool"
    echo -e "${RED}[${ENDCOLOR}0${RED}]${GREEN} Exit"
    echo ""
    echo -e -n "${CYAN} Choose Option : ${ENDCOLOR}"
    read selection

    case $selection in
        1|2|3|4|5|6|7|8) 
            update_banner $selection 
            ;;
        9) 
            update_tool 
            ;;
        0) 
            echo -e "${YELLOW}Exiting...${ENDCOLOR}"
            exit 0 
            ;;
        *) 
            echo -e "\n${RED}Invalid Input!${ENDCOLOR}"
            sleep 1
            main_menu 
            ;;
    esac
}

main_menu
