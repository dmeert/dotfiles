#
# Executes commands at login pre-zshrc.
#

# Source Prezto provided runcom
[[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zprofile" ]] && source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zprofile"

# Overrides for Prezto defaults
export VISUAL='code -nw'
