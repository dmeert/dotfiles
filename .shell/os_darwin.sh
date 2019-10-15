#
# MacOS specifics
#

if [[ "$OSTYPE" =~ ^darwin ]]; then

  # Link VSCode config
  mkdir -p "$HOME/Library/Application Support/Code/User"
  ln -sf "$HOME/.vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"

fi
