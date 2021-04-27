#!/usr/bin/env bash

function install {
  VERSION="2.8"
  TMUX_PATH="$HOME/opt/tmux"
  rm -rf $TMUX_PATH

  # sudo apt-get -y install pkg-config libevent-dev libncurses5-dev libncursesw5-dev

  git clone --depth 1 --branch "$VERSION" https://github.com/tmux/tmux.git "$TMUX_PATH"
  cd "$TMUX_PATH"

  sh autogen.sh
  sh configure && make
  cp tmux $HOME/bin
}

function dependencies {
  brew install reattach-to-user-namespace
}

function cpu_monitor {
  git clone git@github.com:thewtex/tmux-mem-cpu-load.git $HOME/repos
  cd $HOME/repos/tmux-mem-cpu-load
  cmake .
  make
  make install
}

$@
