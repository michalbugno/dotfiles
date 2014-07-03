export EDITOR='vim -f'
export SVNEDITOR='vim -f'
export CLICOLOR=1

export PATH="$HOME/.rbenv/bin:$PATH:$HOME/cellar/bin"
eval "$(rbenv init -)"

[ -f ~/.alias ] && source ~/.alias
[ -f ~/Code/dotfiles/bash/git-prompt.sh ] && source ~/Code/dotfiles/bash/git-prompt.sh
[ -f ~/Code/dotfiles/bash/git-completion.bash ] && source ~/Code/dotfiles/bash/git-completion.bash
[ -f ~/.dotfiles/bash/git-prompt.sh ] && source ~/.dotfiles/bash/git-prompt.sh
[ -f ~/.dotfiles/bash/git-completion.bash ] && source ~/.dotfiles/bash/git-completion.bash

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

function b {
  cd ~/VMs/base
  vagrant ssh
}

function gp {
  grid console $1 production
}

function gs {
  grid console $1 sandbox
}

function m {
  grid console mailman production
}

function psgrep() { ps axuf | grep -v grep | grep "$@" -i --color=auto; }


PROMPT_COMMAND=set_prompt
