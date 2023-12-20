#!/bin/bash
source quit.sh
source help.sh

cmd() {
  cmd=$1
  argv=$*

  case "${cmd}" in
    quit | exit ) quit;;
    help ) display_help;;
  esac
}

main() {
  lineCount=1

  while [ 1 ]; do
    date=$(date +%H:%M)
    echo -ne "${date} - [\033[31m${lineCount}\033[m] - \033[33mNathanM\033[m ~ ☠️ ~ "
    read string

    cmd $string
    lineCount=$(($lineCount+1))
  done
}

main
