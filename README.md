# dotfiles

Cyrus Yip's dotfiles managed by [chezmoi](https://github.com/twpayne/chezmoi).

It's recommended to read the dotfiles that interest you and copy what you need, because my dotfiles may not meet your needs. If you want to try these dotfiles, install [chezmoi](https://www.chezmoi.io/install/) and [git](https://git-scm.com/downloads), and choose one of the installation methods. You may get different dotfiles on different machines because chezmoi uses [templates](https://www.chezmoi.io/user-guide/templating/) to change the contents of a file depending on the environment(operating system, hostname, etc).

## Screenshots

Please see <https://github.com/CyrusYip/dotfiles/issues/1>.

## Method 1: install all dotfiles

With this method, all dotfiles will be installed in your home directory, and existing dotfiles will be overwritten.

```bash
# download dotfiles
chezmoi init CyrusYip
# see what will happen
chezmoi apply --dry-run --verbose
# install dotfiles
chezmoi apply --verbose
```

## Method 2: merge

With this method, you manually merge existing dotfiles and my dotfiles with `vimdiff`. Vim needs to be installed in this method. Don't use this method if you are not familiar with `vimdiff`.

```bash
# download dotfiles
chezmoi init CyrusYip
# compare and get what you needs
chezmoi merge-all
```
