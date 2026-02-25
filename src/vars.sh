#!/bin/bash

tool_version=1.2

package_list="\
  zsh\
  zsh-autocomplete\
  zsh-autosuggestions\
  zsh-history-substring-search\
  zsh-syntax-highlighting\
"

font_package=ttf-hack-nerd

p10k_repo_name=powerlevel10k
p10k_repo_url=https://github.com/romkatv/$p10k_repo_name

zsh_themes_dir="$HOME/zsh_themes"
p10k_dir="$zsh_themes_dir/$p10k_repo_name"
zshrc_path="$HOME/.zshrc"

echo "-- zsh-setup v$tool_version"
