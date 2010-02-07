export PREFIX="/usr/local"
export PATH="${PREFIX}/bin:${PREFIX}/pgsql/bin:${PATH}:~/Development/config/bin"
export GEM_HOME="/usr/local/lib/ruby/1.8/gems"
export EDITOR='mvim -f'
export SVNEDITOR='mvim -f'
export PS1='\[\033[00;32m\]\u@\h \[\033[00m\]\[\033[00;34m\]\w\[\033[00;31m\]$(__git_ps1 ".%s") \[\033[00;34m\]\$\[\033[00m\] '
export CLICOLOR=1
alias ll='ls -lh'
source /usr/local/etc/bash_completion.d/*
