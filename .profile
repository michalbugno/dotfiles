export EDITOR='nvim -f'
export SVNEDITOR='nvim -f'
export CLICOLOR=1
export BUNDLE_PATH='.bundle'
export HISTIGNORE="j *"
export BUILDAH_FORMAT=docker
export AWS_REGION=us-east-1

eval $(/opt/homebrew/bin/brew shellenv)
. /opt/homebrew/opt/asdf/libexec/asdf.sh

[ -f ~/.alias ] && source ~/.alias
[ -f ~/.profile_custom ] && source ~/.profile_custom
