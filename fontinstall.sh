#!/usr/bin/env zsh

# This script installs/updates fonts in the right folder depending on OS

if [[ $(uname) == 'Darwin' ]]; then
  font_dir="$HOME/Library/Fonts"
elif [[ $(uname) == 'Linux' ]]; then
  font_dir="$HOME/.local/share/fonts"
elif [[ -f /proc/version ]] && grep --quiet Microsoft /proc/version; then
	font_dir="/mnt/c/Windows/Fonts"
fi

cp -f $HOME/.dotfiles/fonts/* "$font_dir/"

if [[ -n $(which fc-cache) ]]; then
  fc-cache -f "$font_dir"
fi
