#!/usr/bin/env bash

PLUGINS_PATH="$HOME/.shewill/plugins"
SYNTAX_HIGHLIGHT_PLUGIN_PATH="$PLUGINS_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh"

source "$SYNTAX_HIGHLIGHT_PLUGIN_PATH"

function update_all {
  mkdir -p "$PLUGINS_PATH"
  git -C $PLUGINS_PATH clone https://github.com/zsh-users/zsh-syntax-highlighting
}
