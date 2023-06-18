export EDITOR='nvim -f'
export SVNEDITOR='nvim -f'
export CLICOLOR=1
export BUNDLE_PATH='.bundle'
export PATH="$HOME/.bin:$PATH:$HOME/cellar/bin:$HOME/code/getprobe/infra_scripts/bin"
export HISTIGNORE="j *"
export BUILDAH_FORMAT=docker
export AWS_REGION=us-east-1

[ -f ~/.alias ] && source ~/.alias
[ -f ~/.profile_custom ] && source ~/.profile_custom
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

PROMPT_COMMAND=set_prompt

eval "$(direnv hook bash)"
. "$HOME/.asdf/asdf.sh"

export PATH="/usr/local/opt/redis@6.2/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
