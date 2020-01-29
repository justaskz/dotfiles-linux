#!/usr/bin/env bash

function install {
  mkdir -p $HOME/bin
  wget https://raw.githubusercontent.com/starship/starship/master/install/install.sh -P $HOME/tmp
  bash $HOME/tmp/install.sh --yes --bin-dir $HOME/bin
  rm $HOME/tmp/install.sh
}

$@
