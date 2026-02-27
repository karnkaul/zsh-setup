#!/bin/bash

[[ $UID == 0 ]] && { echo "don't run as root"; exit 1; }

cd $(dirname "$0")

source src/vars.sh
source src/util.sh

echo "-- installing packages"
install_packages $zsh_packages $font_package

echo "-- cloning powerlevel10k to $p10k_dir"
create_directory "$config_dir"
delete_directory "$p10k_dir"
clone_repo $p10k_repo_url "$p10k_dir" --depth=1

echo "-- generating $zshrc_path"
backup_file "$zshrc_path"
copy_file src/zshrc.in.zsh "$zshrc_path"
require_success sed -i s:SETUP_ZSH_THEME_SCRIPT:"$p10k_theme": "$zshrc_path"

echo "== done"

exit
