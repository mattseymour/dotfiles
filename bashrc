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
    source $HOME/.bash_aliases
fi

if [ -f $HOME/.bash_aliases_local ]; then
    source $HOME/.bash_aliases_local
fi

###
# Environment variables
###

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
