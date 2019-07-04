export EDITOR='vim -f'
export SVNEDITOR='vim -f'
export CLICOLOR=1
export BUNDLE_PATH='.bundle'
export PATH="$PATH:$HOME/cellar/bin"

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

[ -f ~/.alias ] && source ~/.alias
[ -f ~/.profile_custom ] && source ~/.profile_custom
[ -f ~/code/private/dotfiles/bash/git-prompt.sh ] && source ~/code/private/dotfiles/bash/git-prompt.sh
[ -f ~/code/private/dotfiles/bash/git-completion.bash ] && source ~/code/private/dotfiles/bash/git-completion.bash
[ -f ~/.dotfiles/bash/git-prompt.sh ] && source ~/.dotfiles/bash/git-prompt.sh
[ -f ~/.dotfiles/bash/git-completion.bash ] && source ~/.dotfiles/bash/git-completion.bash

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

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
  grid console $1 production ${@:2}
}

function gs {
  grid console $1 sandbox ${@:2}
}

function gst {
  grid console $1 staging ${@:2}
}

function m {
  grid console mailman production $@
}

function psgrep() { ps axuf | grep -v grep | grep "$@" -i --color=auto; }


PROMPT_COMMAND=set_prompt
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
