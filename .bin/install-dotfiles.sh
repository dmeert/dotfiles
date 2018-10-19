#
# Install dotfiles on new machine
#
export DOTFILES=${DOTFILES:-".dotfiles"}
if [ -e ${HOME}/${DOTFILES} ]; then
    echo "${HOME}/${DOTFILES} already exists !"
    exit 1
fi

# Clone repo and set it up
git clone --bare git@github.com:Twanislas/dotfiles.git ${HOME}/${DOTFILES}
git --git-dir=$HOME/$DOTFILES --work-tree=$HOME config --local core.bare no
git --git-dir=$HOME/$DOTFILES --work-tree=$HOME config --local core.worktree ${HOME}
git --git-dir=$HOME/$DOTFILES --work-tree=$HOME config --local status.showUntrackedFiles no
echo '*' >> ${HOME}/${DOTFILES}/info/exclude
echo '.*' >> ${HOME}/${DOTFILES}/info/exclude

# Pull files
git --git-dir=$HOME/$DOTFILES --work-tree=$HOME checkout -f
git --git-dir=$HOME/$DOTFILES --work-tree=$HOME submodule update --recursive --init

# Spawn a new shell
exec ${SHELL}
