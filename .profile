export PREFIX="/usr/local"
export PATH="${PREFIX}/bin:${PREFIX}/pgsql/bin:${PATH}:~/Development/config/bin"
export GEM_HOME="/usr/local/lib/ruby/1.8/gems"
export EDITOR='mvim -f'
export SVNEDITOR='mvim -f'
export CLICOLOR=1
alias ll='ls -lh'
source /usr/local/etc/bash_completion.d/*

function set_prompt {
  EXIT_STATUS=$?
  OFF="\[\033[00m\]"
  RED="\[\033[00;31m\]"
  GREEN="\[\033[00;32m\]"
  YELLOW="\[\033[00;33m\]"
  BLUE="\[\033[00;34m\]"
  if [ $EXIT_STATUS -eq 0 ]
  then
    PS1="${GREEN}\u@\h ${BLUE}\w${YELLOW}$(__git_ps1 ".%s") ${BLUE}\$${OFF} "
  else
    PS1="${RED}($EXIT_STATUS)${GREEN}\u@\h ${BLUE}\w${YELLOW}$(__git_ps1 ".%s") ${BLUE}\$${OFF} "
  fi
}
PROMPT_COMMAND=set_prompt
