#!/bin/bash

source vars.sh

echo "-- uninstalling packages"
sudo pacman -R --noconfirm $pacman_packages
yay -R --noconfirm $yay_packages

echo "== done"

exit
