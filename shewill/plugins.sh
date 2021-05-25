#!/usr/bin/env bash

PLUGINS_PATH="$HOME/.shewill/plugins"
SYNTAX_HIGHLIGHT_PLUGIN_PATH="$PLUGINS_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh"

if [[ -a $SYNTAX_HIGHLIGHT_PLUGIN_PATH ]] && [[ -n "$ZSH_VERSION" ]]; then
  source "$SYNTAX_HIGHLIGHT_PLUGIN_PATH"
fi

function update_all {
  mkdir -p "$PLUGINS_PATH"
  git -C $PLUGINS_PATH clone https://github.com/zsh-users/zsh-syntax-highlighting
}
