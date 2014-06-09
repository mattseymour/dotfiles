# =========================================== #
# Author: Matt Seymour
# Author email: matt@mattseymour.net
# =========================================== #

# Load global bash definitions (if any)
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Load bash aliases
if [ -f $HOME/.bash_aliases ]; then
    . $HOME/.bash_aliases
fi

if [ -f $HOME/.bash_aliases_local ]; then
    . $HOME/.bash_aliases_local
fi

# Load bash completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# Load git completion
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi


###
# Environment variables
###
HISTSIZE=10000
HISTTIMEFORMAT="%h %d %H:%M:%S "ory
HISTCONTROL=ignoredups:ignorespace
PROMPT_COMMAND='history -a'

export GIT_PS1_SHOWDIRTYSTATE=1

export WORKON_HOME=~/venv
export DJANGO_SETTINGS_MODULE=settings.dev

###
# END Environment variables
###

# Load in virtualenvwrapper
if [ -f  /usr/local/bin/virtualenvwrapper.sh ]; then
    source  /usr/local/bin/virtualenvwrapper.sh
fi


###
# Functions
##

# backup a file
bk() {
    cp $1 $1.bak
}
