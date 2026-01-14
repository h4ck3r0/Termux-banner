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
    
    SOURCE_FILE="$TEMPLATE_DIR/.${style_number}zshrc"

    if [[ ! -f "$SOURCE_FILE" ]]; then
        echo -e "\n${RED}  [!] Error: File '$SOURCE_FILE' not found!${ENDCOLOR}"
        echo -e "${YELLOW}      Ensure the file exists in .object folder.${ENDCOLOR}"
        sleep 3
        main_menu
        return
    fi

   
    echo -e "\n${CYAN}  Enter the Name to display in the banner:${ENDCOLOR}"
    read -p "  ❯ " user_name

    echo -e "\n${GREEN}  [*] Applying Style $style_number...${ENDCOLOR}"

  
    sed -e "s/\\\ PROC/$user_name/g" -e "s/PROC/$user_name/g" "$SOURCE_FILE" > "$TARGET_FILE"

    if [ $? -eq 0 ]; then
        echo -e "${GREEN}  [√] Success! Restart Termux to see changes.${ENDCOLOR}"
    else
        echo -e "${RED}  [!] Error writing to .zshrc${ENDCOLOR}"
    fi
    exit 0
}

update_tool() {
    echo -e "\n${YELLOW}  [*] Updating Tool...${ENDCOLOR}"
    rm -rf "$HOME/Termux-banner"
    git clone https://github.com/h4ck3r0/Termux-banner "$HOME/Termux-banner"
    echo -e "${GREEN}  [√] Update Complete. Restart script.${ENDCOLOR}"
    exit 0
}

main_menu() {
    header
    echo -e "${RED}[${ENDCOLOR}1${RED}]${GREEN} Dog      ${RED}[${ENDCOLOR}8${RED}]${GREEN} DedSec"
    echo -e "${RED}[${ENDCOLOR}2${RED}]${GREEN} Gun      ${RED}[${ENDCOLOR}9${RED}]${GREEN} Dashboard"
    echo -e "${RED}[${ENDCOLOR}3${RED}]${GREEN} Zombie   ${RED}[${ENDCOLOR}10${RED}]${GREEN} Glitch"
    echo -e "${RED}[${ENDCOLOR}4${RED}]${GREEN} Bear     ${RED}[${ENDCOLOR}11${RED}]${GREEN} Monolith"
    echo -e "${RED}[${ENDCOLOR}5${RED}]${GREEN} BannerV2 ${RED}[${ENDCOLOR}12${RED}]${GREEN} Cyborg"
    echo -e "${RED}[${ENDCOLOR}6${RED}]${GREEN} Bat      ${RED}[${ENDCOLOR}13${RED}]${GREEN} Circuit"
    echo -e "${RED}[${ENDCOLOR}7${RED}]${GREEN} Skull"
    echo ""
    echo -e "${RED}[${ENDCOLOR}U${RED}]${GREEN} Update Tool"
    echo -e "${RED}[${ENDCOLOR}E${RED}]${GREEN} Exit"
    echo ""
    echo -e -n "${CYAN} Choose Option : ${ENDCOLOR}"
    read selection

    case $selection in
        1|2|3|4|5|6|7|8|9|10|11|12|13) 
            update_banner $selection 
            ;;
        u|U) 
            update_tool 
            ;;
        e|E) 
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
