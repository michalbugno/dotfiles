#!/bin/bash

if [ $# -eq 0 ]
then
  echo "Usage: `basename $0` <command>"
  exit
fi

PROGS=("$HOME/.gemrc" "$HOME/.gitconfig" "$HOME/.mplayer" "$HOME/.profile"
       "$HOME/.ssh" "$HOME/.vim" "$HOME/.vimrc" "/etc/hosts")
CMD=$1

case $CMD in

  fetch)
  for PROG in ${PROGS[@]}; do
    echo "cp -r $PROG ./"
    cp -R $PROG ./
  done
  ;;

  *)
  echo "Wrong parameter: $CMD"
  exit 1

esac
