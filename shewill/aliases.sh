#!/usr/bin/env bash

alias src="source $HOME/.zshrc"
alias ls="/bin/ls -lah --color"

#################################################
## GIT
#################################################
alias gis="git status -s"
alias gic="git checkout"
alias gip="git remote prune origin"
alias gil="git log"
alias gilll="git log --graph --pretty=format:'%C(yellow)%h%Creset%C(blue)%d%Creset %C(white bold)%s%Creset %C(white dim)(by %an %ar)%Creset' --all"
alias gir="git reset HEAD^"
alias gib="git branch --sort=-committerdate"
alias gibb="git branch"
alias gifp="git push -f origin HEAD"
alias gisave="git add .; git commit -m wip"
