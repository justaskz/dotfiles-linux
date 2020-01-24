#!/usr/bin/env zsh

FZF_HOME="$HOME/opt/fzf"

source "$FZF_HOME/shell/completion.zsh"
source "$FZF_HOME/shell/key-bindings.zsh"

# CTRL+P show files and directories in current folder only
__fsel_mod() {
  local cmd="${FZF_CTRL_P_COMMAND:-"command find -L . -maxdepth 1 \\( -path '*/\\.*' -o -fstype 'sysfs' -o -fstype 'devfs' -o -fstype 'devtmpfs' -o -fstype 'proc' \\) -prune \
    -o -type f -print \
    -o -type d -print \
    -o -type l -print 2> /dev/null | cut -b3-"}"
  setopt localoptions pipefail no_aliases 2> /dev/null
  eval "$cmd" | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} --reverse $FZF_DEFAULT_OPTS $FZF_CTRL_T_OPTS" $(__fzfcmd) -m "$@" | while read item; do
    echo -n "${(q)item} "
  done
  local ret=$?
  echo
  return $ret
}

fzf-file-widget_mod() {
  LBUFFER="${LBUFFER}$(__fsel_mod)"
  local ret=$?
  zle reset-prompt
  return $ret
}

zle     -N   fzf-file-widget_mod
bindkey '^P' fzf-file-widget_mod
