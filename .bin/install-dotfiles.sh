#!/bin/bash
#
# Install dotfiles on new machine
#
export DOTFILES=${DOTFILES:-".dotfiles"}
if [ -e "${HOME}/${DOTFILES}" ]; then
    echo "${HOME}/${DOTFILES} already exists !"
    exit 1
fi

# Clone repo and set it up
git clone --bare git@github.com:Twanislas/dotfiles.git "${HOME}/${DOTFILES}"
git --git-dir="${HOME}/${DOTFILES}" --work-tree="${HOME}" config --local core.bare no
git --git-dir="${HOME}/${DOTFILES}" --work-tree="${HOME}" config --local core.worktree "${HOME}"
git --git-dir="${HOME}/${DOTFILES}" --work-tree="${HOME}" config --local status.showUntrackedFiles no
git --git-dir="${HOME}/${DOTFILES}" --work-tree="${HOME}" config --local core.sparsecheckout true
{
    echo '*'
    echo '.*'
    echo '/*'
} >> "${HOME}/${DOTFILES}"/info/exclude
{
    echo '/*'
    echo '!README.md'
    echo '!LICENCE'
    echo '!.github'
    echo '!.gitleaks.toml'
} >> "${HOME}/${DOTFILES}"/info/sparse-checkout
ln -sf "${HOME}/.bin/gitleaks-pre-commit-hook" "${HOME}/${DOTFILES}"/hooks/pre-commit

# Pull files
git --git-dir="${HOME}/${DOTFILES}" --work-tree="${HOME}" checkout -f
git --git-dir="${HOME}/${DOTFILES}" --work-tree="${HOME}" submodule update --recursive --init

# Change default shell to Zsh
sudo chsh -s "$(which zsh)" "$USER"

# Spawn a new shell
exec "$(which zsh)"
