#
# Install dotfiles on new machine
#
export DOTFILES=${DOTFILES:-".dotfiles"}
if [ -e ${HOME}/${DOTFILES} ]; then
    echo "${HOME}/${DOTFILES} already exists !"
    exit 1
fi

# Clone repo and set it up
git clone \
	--no-checkout \
	--shallow-submodules \
	--config core.worktree=${HOME} \
	--config status.showUntrackedFiles=no \
  git@github.com:Twanislas/dotfiles.git \
  ${HOME}/${DOTFILES}
echo '*' >> ${HOME}/${DOTFILES}/info/exclude
echo '.*' >> ${HOME}/${DOTFILES}/info/exclude

# Pull files
git -C ${HOME}/${DOTFILES} checkout -f
git -C ${HOME}/${DOTFILES} submodule update --recursive --init --depth 1

# Spawn a new shell
exec ${SHELL}
