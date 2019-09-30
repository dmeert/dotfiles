#
# MacOS specifics
#

if [[ "$OSTYPE" =~ ^darwin ]]; then

  # Link VSCode config
  ln -sf "$HOME/.vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"

fi