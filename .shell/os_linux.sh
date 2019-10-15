#
# Linux specifics
#

if [[ "$OSTYPE" =~ ^linux ]] && [[ -f /proc/version ]] && grep -v --quiet Microsoft /proc/version ; then

  # Link VSCode config
  mkdir -p "$HOME/.config/Code/User"
  ln -sf "$HOME/.vscode/settings.json" "$HOME/.config/Code/User/settings.json"

fi
