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

# Load tmux by default
if [ "$TMUX" = "" ]; then tmux; fi

###
# Environment variables
###
HISTSIZE=10000
HISTTIMEFORMAT="%h %d %H:%M:%S "ory
HISTCONTROL=ignoredups:ignorespace
PROMPT_COMMAND='history -a'

export GIT_PS1_SHOWDIRTYSTATE=1

export WORKON_HOME=$HOME/venv
export DJANGO_SETTINGS_MODULE=settings.dev
export AGENT_CONTROLLER=https://dev.actual-experience.com/hq
export AGENT_REGISTRAR=https://dev-registration.actual-experience.com/hq
export AGENT_NO_ENCRYPT=True
###
# END Environment variables
###

# Load in virtualenvwrapper
if [ -f  /usr/local/bin/virtualenvwrapper.sh ]; then
    source  /usr/local/bin/virtualenvwrapper.sh
fi

if [ "$TMUX" = "" ]; then tmux; fi



###
# Functions
##

# backup a file
bk() {
    cp $1 $1.bak
}

###
# Display
###

export PS1="\[\033[0;32m\]\u@\h : \w\[\033[1;33m\]\$(__git_ps1)\n\[\033[1;35m\][\!|\t] $  \[\033[0;37m\]"
