#!/usr/bin/env bash

function install {
  sudo apt-get -y install zsh
}

function from_source {
  git clone https://github.com/zsh-users/zsh.git $HOME/opt/zsh
  cd $HOME/opt/zsh
  sudo apt-get install -y git-core gcc make autoconf yodl libncursesw5-dev texinfo

  ./Util/preconfig
  ./configure
  make
  make check
}

$@
