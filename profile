# ~/.profile
#
# Frederico Sales
# <frederico.sales@engenharia.ufjf.br>
# 2020
#

# bash completion path
#COMPLETION=""
COMPLETION="/etc/bash_completion"

# source .bashrc
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# bash aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
 fi

# bash completion
if [ -f "$COMPLETION" ]; then
    source "$COMPLETION"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

mesg n 2> /dev/null || true