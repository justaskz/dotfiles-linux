#!/usr/bin/env zsh

function run {
  cp "dotfiles/.zshrc" "$HOME/.zshrc"
  cp -r "shewill" "$HOME/.shewill"
}

$@
