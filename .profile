export EDITOR='vim -f'
export SVNEDITOR='vim -f'
export CLICOLOR=1

alias ll='ls -lh'
alias g='git'

source /Users/msq/my/dotfiles/bash/git-prompt.sh
source /Users/msq/my/dotfiles/bash/git-completion.bash

function set_prompt {
  EXIT_STATUS=$?
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
PROMPT_COMMAND=set_prompt

source /Users/msq/.base_profile.bash

[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

fortune -a
