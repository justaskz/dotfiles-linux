#!/usr/bin/env zsh

function run {
  cp "dotfiles/.zshrc" "$HOME/.zshrc"
  cp -R shewill/. $HOME/.shewill
}

$@
