#!/bin/bash

source quit.sh
source help.sh
source list_files.sh
source about.sh
source age.sh
source version.sh

# login="efipeek"
# password="efipeek"

# authenticate_user() {
#   read -p "Login: " user_login
#   read -s -p "Password: " user_password
#   echo

#   if [[ "$user_login" == "$login" && "$user_password" == "$password" ]]; then
#     echo "Bienvenue, truc !"
#     return 0
#   else
#     echo "Sort de là."
#     return 1
#   fi
# }

# authenticate_user || exit 1

cmd() {
  cmd=$1
  argv=$*

  case "${cmd}" in
    quit | exit ) quit;;
    help ) display_help;;
    ls ) list_files;;
    about ) display_about;;
    age ) age;;
    version ) display_version;;
  esac
}

main() {
  lineCount=1

  while [ 1 ]; do
    date=$(date +%H:%M)
    echo -ne "${date} - [\033[31m${lineCount}\033[m] - \033[33mXzen\033[m ~ ☠️ ~ "
    read string

    cmd $string
    lineCount=$(($lineCount+1))
  done
}

main