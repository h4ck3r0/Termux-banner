clear

RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

banner() {

 
echo -e "${RED} ▀▀█▀▀ ░░ ▒█▀▀█ █▀▀█ █▀▀▄ █▀▀▄ █▀▀ █▀▀█ "
echo -e "${RED} ░▒█░░ ▀▀ ▒█▀▀▄ █▄▄█ █░░█ █░░█ █▀▀ █▄▄▀ "
echo -e "${RED} ░▒█░░ ░░ ▒█▄▄█ ▀░░▀ ▀░░▀ ▀░░▀ ▀▀▀ ▀░▀▀ ${ENDCOLOR} "
echo ""
 echo -e "\e[1;31m  [\e[32m√\e[31m] \e[1;91m by \e[1;36mRaj Aryan \e[93m/ \e[100;92m Youtube.com/c/H4Ck3R0\e[0m"

                  }
wr () {
           
                               printf "\033[1;91m Invalid input!!!\n"
                               selection
                               }
                               1line() {

                                                         wget -O $PREFIX/share/figlet/ASCII-Shadow.flf https://raw.githubusercontent.com/xero/figlet-fonts/master/ANSI%20Shadow.flf
                                                         rm -rf ~/.termux/colors.properties
                                                         rm -rf /data/data/com.termux/files/usr/etc/motd
                                                         chsh -s zsh
                                                         cd ~/Termux-banner/.object ; cp -r .colors.properties ~/.termux/colors.properties
                                                         cd ~/Termux-banner/.object ; cp -r .termux.properties ~/.termux/termux.properties
                                                         cd ~/Termux-banner/.object ; bash .theme.sh
                                                         clear
                                                         cd ~/Termux-banner ; bash banner.sh
                                       }
                                       2line() {
                                                cd ~/Termux-banner/.object ; bash .banner.sh
                                                
                                               }
                                                         3line() {
                                                                  rm -rf ~/Termux-banner
                                                                  cd
                                                                  git clone https://github.com/h4ck3r0/Termux-banner
                                                                  cd ~/Termux-banner ; bash banner.sh
                                                                  }
    selection () {
                                           
                                            echo -e -n "\e[1;96m Choose\e[1;96m Option : \e[0m"
                                            cd ~/Termux-banner
                                            read a
                                            case $a in
                                            1) 1line ;;
                                            2) 2line ;;
                                            3) 3line ;;
                                            4) exit ;;
                                            *) wr ;;

                                            esac 
                                            }

  menu () {
                                  banner
                                  printf "\n\033[1;91m[\033[0m1\033[1;91m]\033[1;92m Necessary Setup \n"
                                  printf "\033[1;91m[\033[0m2\033[1;91m]\033[1;92m Banners \n"
                                  printf "\033[1;91m[\033[0m3\033[1;91m]\033[1;92m Update\n"
                                  printf "\033[1;91m[\033[0m4\033[1;91m]\033[1;92m Exit\n\n\n"
                                  
                                  selection
                                  }
                  menu
