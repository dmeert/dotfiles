#
# Defines environment variables.
#

# Dotfiles
export DOTFILES=${DOTFILES:-".dotfiles"}

# Add local .bin to path
PATH=~/.bin:${PATH}

# Default user
DEFAULT_USER=arahier

# OpenPGP
export GPG_TTY=$(tty)

# Default Kubectl config location
export KUBECONFIG=${HOME}/.kube/config

# Source Prezto provided runcom
[[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshenv" ]] && source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshenv"
