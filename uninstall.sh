#!/bin/bash

[[ $UID == 0 ]] && { echo "don't run as root"; exit 1; }

source src/vars.sh
source src/util.sh

echo "-- uninstalling packages"
uninstall_packages $zsh_packages

echo "-- removing $p10k_dir"
delete_directory "$p10k_dir"

echo "== done"

exit
