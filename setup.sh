#!/bin/bash

function setLink {
    # Check if the file exists
    if [ -e $1 ]; then
        echo "Moving file to $1_old"
        mv $1 $1_old
    # Check if symlink
    elif [ -h $1 ]; then
        echo "Removing symlink $1"
        rm $1
    fi
    ln -s $(pwd)/$2 $1
}

setLink $HOME/.zshrc zshrc
setLink $HOME/.zsh_aliases aliases
setLink $HOME/.gitconfig gitconfig
setLink $HOME/.gitignore_global gitignore_global
setLink #HOME/.tmux.conf tmux.conf
