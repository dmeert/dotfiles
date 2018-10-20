# Twan's dotfiles
I manage my dotfiles leveraging Git's "worktree" feature. This way I can have the Git repo metadata stored wherever I want and the atual files stored directly in my `$HOME`.

Inspired from :
* [Nicola Paolucci's "The best way to store your dotfiles: A bare Git repository"](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/) and his [dotfiles](https://bitbucket.org/durdn/cfg)
* [dvidelabs/config](https://github.com/dvidelabs/config)

## Prerequisites
* Git
* Curl
* Zsh

## Install
You can change the path where you store the bare repo by setting the `DOTFILES` environment variable before launching the install script. The default is `.dotfiles` and it's always relative to `$HOME`. So if you `export DOTFILES=.my-awesome-repo`, the bare repository will end up in something like `/home/<username>/.my-awesome-repo`.

Then launch the install script :
```
curl -sfL https://raw.githubusercontent.com/Twanislas/dotfiles/master/.bin/install-dotfiles.sh | bash
```

## Usage
`dotfiles` is an alias to `git --git-dir=$HOME/$DOTFILES --work-tree=$HOME` so you can track and commit files just like a normal Git repo :
```
dotfiles add -f ~/.vimrc
...
dotfiles commit -m "Added personal dot file"
```

## Contributing
Pull requests and issues welcome ! :)

## Coming soon
- [ ] Create a branch to clone from and have a separate `init` script to deploy a fresh, empty version of the dotfiles for newstarters
