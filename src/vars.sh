#!/bin/bash

tool_version=1.3

zsh_packages="\
  zsh\
  zsh-autocomplete\
  zsh-autosuggestions\
  zsh-history-substring-search\
  zsh-syntax-highlighting\
"

font_package=ttf-hack-nerd

p10k_repo_name=powerlevel10k
p10k_repo_url=https://github.com/romkatv/$p10k_repo_name

config_dir=${XDG_DATA_DIR:-"$HOME/.local/share"}
p10k_dir="${config_dir}/zsh-theme-powerlevel10k"
p10k_theme="${p10k_dir}/powerlevel10k.zsh-theme"

zshrc_path="$HOME/.zshrc"

echo "-- zsh-setup v$tool_version"
