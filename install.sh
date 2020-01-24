#!/usr/bin/env bash

function run {
  cp "dotfiles/.zshrc" "$HOME/.zshrc"
  cp -R shewill/. $HOME/.shewill
}

$@
