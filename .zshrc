# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' matcher-list '' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle :compinstall filename '/Users/msq/.zshrc'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original true
zstyle ':completion:*' preserve-prefix '//[^/]##/'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# if cannot find command - perform cd
# setopt autocd

unsetopt beep # get lost, beep

PROMPT='(%?)%B%n%b@%m:%2d%# ' # left prompt
RPROMPT='%D %*' # right prompt

# macports and tools
export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/grace/bin:$HOME/Development/toolbox/bin:$PATH

# export LANG='pl_PL.UTF-8'
# export LANG='C'
export EDITOR='mvim -f'
export SVNEDITOR='mvim -f'
export CLICOLOR=1 # enable colored ls
export LSCOLORS="Cxgxxxxxxxxxxxxxxxxxxx" # color definitions (pairs foreground-background)
export PYTHONPATH=/opt/local/lib/svn-python:/opt/local/lib/python2.5/site-packages:/Library/Python/2.5/site-packages/scons-0.98.0-py2.5.egg/scons-0.98.0
export GDFONTPATH=/Library/Fonts # gnuplot
export DYLD_LIBRARY_PATH=/opt/local/oracle/
export MANPATH=/opt/local/share/man/:$MANPATH
export RUBYLIB=/opt/local/lib

# home-end bindings
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line

alias java=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Commands/java
