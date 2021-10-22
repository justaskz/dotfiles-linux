#!/usr/bin/env bash

function refresh_inventory {
  find $HOME/repos/ansible/inventory* -type f -exec cat {} \; | \
    grep -Po ".*ansible_host=[\d\.]*" | \
    sed 's/^#.*//' | \
    sed 's/ansible_host=//' |
    sed '/^$/d' |
    sed 's/\s/ juka@/' |
    sort -u > $HOME/repos/inventory
}
