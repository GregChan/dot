# stterm display
# export DISPLAY="localhost:0"

# set edit mode to vi
set -o vi

# work postgres variables
export PGHOST="localhost"
export PGUSER="postgres"
export PGPASSWORD="smartcar"
export NODE_ENV="development"

# docker host for subsystem
export DOCKER_HOST="tcp://0.0.0.0:2375"

# colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# enable 256 colors
export TERM="xterm-256color"

# set git editor
export VISUAL=nvim
export EDITOR="$VISUAL"

# get git branch
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# PS1 prompt
export PS1="\u \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# base 16 colors for solarized
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

base16_solarized-dark
#base16_solarized-light
#base16_solarized-dark

export PATH=~/.local/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
export PATH=~/.dot/bin:$PATH

function _update_ps1() {
    PS1="$(powerline-shell $?)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

export PATH=$PATH:/usr/local/go/bin

export PATH=~/projects/bin:$PATH
