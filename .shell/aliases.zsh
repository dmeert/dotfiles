# Dotfiles
alias dotfiles='git --git-dir=$HOME/$DOTFILES --work-tree=$HOME'
alias dfu='dotfiles pull -q && dotfiles submodule update -q --init --recursive && exec $(which zsh)'
alias dfsubup='dotfiles submodule update --init --remote && dotfiles submodule foreach --recursive git submodule update --init'
alias cf='dotfiles'
alias cfu='dfu'
alias cfsubup='dfsubup'

# Docker
alias dc='docker-compose'
alias dk='docker'

# Misc
alias fu='sudo $(fc -ln -1)'
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -'
alias type='type -f'
alias lla='ll -a'
