#!/bin/bash

require_success() {
  $@
  if [[ $? != 0 ]]; then
    echo "-- fatal error executing '$@'"
    exit $?
  fi
}

validate_relative_path() {
  if [[ "$1" == "" ]]; then # empty path
    echo "invalid path: $1"
    exit 1
  fi

  if [[ "$1" != /* ]]; then # relative path
    return
  fi

  if [[ "$1" == /home/* ]]; then # /home/*
    return
  fi

  echo "invalid path: $1"
  exit 1
}

install_packages() {
  require_success sudo pacman -Syu --noconfirm $@
}

uninstall_packages() {
  require_success sudo pacman -R --noconfirm $@
}

create_directory() {
  validate_relative_path "$1"
  [[ -d $1 ]] && return
  require_success mkdir -p "$1"
}

delete_directory() {
  validate_relative_path "$1"
  [[ ! -d "$1" ]] && return
  require_success rm -rf "$1"
}

copy_file() {
  validate_relative_path "$1"
  validate_relative_path "$2"
  require_success cp "$1" "$2"
}

backup_file() {
  validate_relative_path "$1"
  [[ ! -f "$1" ]] && return
  backup_path="$1.bak"
  [[ -f "$backup_path" ]] && require_success rm "$backup_path"
  require_success cp "$1" "$backup_path"
}

clone_repo() {
  require_success git clone $@
}
