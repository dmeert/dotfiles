# Twan's dotfiles

I manage my dotfiles leveraging Git's "worktree" feature. This way I can have the Git repo metadata stored wherever I want and the actual files stored directly in my `$HOME`.

Inspired from :

* [Nicola Paolucci's "The best way to store your dotfiles: A bare Git repository"](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/) and his [dotfiles](https://bitbucket.org/durdn/cfg)
* [dvidelabs/config](https://github.com/dvidelabs/config)

## Prerequisites

* Git
* Curl
* Zsh

## Installing

I would strongly advise not to clone my dotfiles, instead, [fork](https://github.com/Twanislas/dotfiles/fork) this repo and update the [install script](.bin/install-dotfiles.sh#L11) so it will point to your forked repo. You can then go ahead and change my settings to your liking.

You can change the path where you store the bare repo by setting the `DOTFILES` environment variable before launching the install script. The default is `.dotfiles` and it's always relative to `$HOME`. So if you `export DOTFILES=.my-awesome-repo`, the bare repository will end up in something like `/home/<username>/.my-awesome-repo`.

Then launch the install script :

```sh
curl -sfL https://raw.githubusercontent.com/Twanislas/dotfiles/master/.bin/install-dotfiles.sh | bash
```

## Usage

`dotfiles` is an alias to `git --git-dir=$HOME/$DOTFILES --work-tree=$HOME` so you can track and commit files just like a normal Git repo :

```sh
nano ~/.vimrc
<make changes>
dotfiles add -f ~/.vimrc
dotfiles commit -m "Added Vim config"
```

By default, all the files are ignored. This enables `git add -A` without adding your whole `$HOME` folder and children. Use `git add -f` to add ignored files.

## Contributing

Pull requests and issues welcome ! :)
