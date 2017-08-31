# Powerlevel9k theme config
POWERLEVEL9K_MODE='nerdfont-complete'

DEFAULT_USER=arahier

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "


POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh root_indicator context dir vcs newline)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs)

#source  ~/.dotfiles/powerlevel9k/powerlevel9k.zsh-theme

# Source Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
