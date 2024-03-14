#
# Defines environment variables.
#

# Dotfiles
export DOTFILES=${DOTFILES:-".dotfiles"}

# Add local .bin to path
PATH=~/.bin:${PATH}

# Add gem to path
PATH=~/.gem/ruby/2.6.0/bin:${PATH}
GEM_HOME=~/.gem

# Default user
DEFAULT_USER=didierm

# OpenPGP
export GPG_TTY=$(tty)

# Source Prezto provided runcom
[[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshenv" ]] && source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshenv"
