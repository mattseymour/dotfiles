export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export VIRTUALENVWRAPP_PYTHON=/usr/bin/python3
export PIP_USER='true'
# Path to your oh-my-zsh installation.
export ZSH=/home/matt/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

export UPDATE_ZSH_DAYS=5

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

HIST_STAMPS="yyyy-mm-dd"

# zsh plugins to use
plugins=(git python django)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# load virtualenvwrapper
source $HOME/.local/bin/virtualenvwrapper.sh

# secret variables
source ~/.zsh_secrets

# source ~/.bin/tmuxinator.zsh

# Node version manager options
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# starts the tmux session
if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi


export EDITOR=vim
export PATH="$(pyenv root)/shims:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
