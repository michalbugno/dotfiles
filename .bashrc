[ -f ~/code/dotfiles/bash/git-prompt.sh ] && source ~/code/dotfiles/bash/git-prompt.sh
[ -f ~/code/dotfiles/bash/git-completion.bash ] && source ~/code/dotfiles/bash/git-completion.bash

function set_prompt {
  EXIT_STATUS=$?

  echo -ne "\033]0;${PWD}\007"

  OFF="\[\033[00m\]"
  RED="\[\033[00;31m\]"
  GREEN="\[\033[00;32m\]"
  YELLOW="\[\033[00;33m\]"
  BLUE="\[\033[00;34m\]"
  if [ $EXIT_STATUS -eq 0 ]
  then
    PS1="$GREEN\u@\h $BLUE\w$YELLOW$(__git_ps1 ".%s") $BLUE\$$OFF "
  else
    PS1="$RED$EXIT_STATUS.$GREEN\u@\h $BLUE\w$YELLOW$(__git_ps1 ".%s") $BLUE\$$OFF "
  fi
}

function psgrep() { ps axuf | grep -v grep | grep "$@" -i --color=auto; }
