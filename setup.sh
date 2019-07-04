declare -a dotfiles=(".profile" ".irbrc" ".vimrc" ".gitconfig" ".gitignore" ".alias" ".gemrc")

for dotfile in "${dotfiles[@]}"
do
  ln -f -s "$(PWD)/$dotfile" ~/$dotfile
done
