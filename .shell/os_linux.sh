#
# Linux specifics
#

if [[ "$OSTYPE" =~ ^linux ]]; then

  # Link VSCode config
  ln -sf "$HOME/.vscode/settings.json" "$HOME/.config/Code/User/settings.json"

fi