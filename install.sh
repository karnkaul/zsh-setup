#!/bin/bash

source vars.sh

echo "-- installing packages"
sudo pacman -S --noconfirm $pacman_packages
yay -S --noconfirm $yay_packages

if [[ ! -f $HOME/.zshrc ]]; then
    echo "-- installing .zshrc"
    cp zshrc.zsh $HOME/.zshrc
fi

echo "== done"

exit
