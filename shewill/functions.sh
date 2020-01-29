#!/usr/bin/env bash

function ssh-add-kubilas {
  ssh-add ~/.ssh/kubilas_rsa
}

function ssh-agent-start {
  eval $(ssh-agent -s)
}

function refresh_inventory {
  find /home/justas/repos/ansible/inventory* -type f -exec cat {} \; | grep -Po ".*ansible_host=[\d\.]*" | sed 's/ansible_host=//' > /home/justas/repos/inventory
}
