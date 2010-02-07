if [ $# -eq 0 ]
then
  echo "Usage: `basename $0` <command>"
  exit
fi

PROGS=("$HOME/.gemrc" "$HOME/.gitconfig" "$HOME/.mplayer" "$HOME/.profile"
       "$HOME/.ssh" "$HOME/.vim" "$HOME/.vimrc" "/etc/hosts")
CMD=$1

if [ $CMD == "fetch" ]
then
  for PROG in ${PROGS[@]}; do
    cp -vR $PROG ./
  done
fi
