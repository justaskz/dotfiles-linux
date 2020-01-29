#!/usr/bin/env zsh

autoload -U colors && colors

# History in cache directory:
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=$HOME/.cache/zsh_history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

source "$HOME/.shewill/main.sh"
