#!/usr/bin/env zsh

#
# Basic zsh stuff first
#

# XDG
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$XDG_CONFIG_HOME/local/share
export XDG_CACHE_HOME=$XDG_CONFIG_HOME/cache

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# zsh persistent history
export HISTFILE="$ZDOTDIR/.zsh_history" # History filepath
export HISTSIZE=9999                    # Maximum events for internal history
export SAVEHIST=9999                    # Maximum events in history file

# editor
export EDITOR="vim"
export VISUAL="vim"

# cli
export CLICOLOR=1  # Enable ls color

# path
export PATH=$PATH:$HOME/.rd/bin

#
# Rest is just alphabetical
#

# k9s
export K9S_CONFIG_DIR="$XDG_CONFIG_HOME/k9s"  # home location

# uv
export PATH="$HOME/.local/bin:$PATH"
