#!/usr/bin/env bash

export BIN="$HOME/bin"
export OPT="$HOME/opt"
export TMP="$HOME/tmp"
export GIT_EDITOR=vim

ORIGINAL_PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
PATH="$ORIGINAL_PATH:$BIN"

LINUX_BREW_HOME=/home/linuxbrew/.linuxbrew/bin
PATH="$PATH:$LINUX_BREW_HOME"
