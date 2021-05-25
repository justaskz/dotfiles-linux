#!/usr/bin/env bash

function run {
  install
  refresh

  chsh -s /bin/zsh
}

function install {
  bash recipes/zsh.sh install
  bash recipes/starship.sh install
  bash recipes/fzf.sh install
}

function refresh {
  cp "dotfiles/.zshrc" "$HOME/.zshrc"
  cp "dotfiles/.starship" "$HOME/.starship"
  cp "dotfiles/.tmux.conf" "$HOME/.tmux.conf"
  cp "dotfiles/.env" "$HOME/.env"

  cp -R shewill/. $HOME/.shewill
}

$@
