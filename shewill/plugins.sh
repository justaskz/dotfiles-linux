#!/usr/bin/env bash

PLUGINS_PATH="$HOME/.shewill/plugins"
SYNTAX_HIGHLIGHT_PLUGIN_PATH="$PLUGINS_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh"
AUTO_COMPLETE_PLUGIN_PATH="$PLUGINS_PATH/completion.zsh"

source "$SYNTAX_HIGHLIGHT_PLUGIN_PATH"
# source "$AUTO_COMPLETE_PLUGIN_PATH"

function update_all {
  mkdir -p "$PLUGINS_PATH"
  # git -C $PLUGINS_PATH clone https://github.com/zdharma/fast-syntax-highlighting
  git -C $PLUGINS_PATH clone https://github.com/zsh-users/zsh-syntax-highlighting
  curl -L https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/lib/completion.zsh > $AUTO_COMPLETE_PLUGIN_PATH
}
