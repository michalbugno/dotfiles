if [ $# -eq 0 ]
then
  echo "Usage: `basename $0` <command>"
  exit
fi

CMD=$1
if [ $CMD == "fetch" ]
then
  cp    ~/.gemrc ./
  cp    ~/.gitconfig ./
  cp -r ~/.mplayer ./
  cp -r ~/.profile ./
  cp -r ~/.ssh ./
  cp -r ~/.vim   ./
  cp    ~/.vimrc ./
  cp    /etc/hosts ./
fi
