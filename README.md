# dotfiles

This repo contains dotfiles and useful scripts (`dot_local/bin`) and is managed by [chezmoi](https://github.com/twpayne/chezmoi).

## Screenshots

Please see <https://github.com/CyrusYip/dotfiles/issues/1>.

## Script Descriptions

Scripts are in [dot_local/bin](dot_local/bin).

| Name              | Description                               |
|-------------------|-------------------------------------------|
| 256colors-test    | 256 colors test for terminal emulator     |
| download-nvim-dev | download Nvim development build for Linux |
| file2utf8         | convert file in other encoding to utf-8   |
| optimize-android  | activate Shizuku and Brevent              |
| truecolor-test    | true color test for terminal emulator     |
| vf                | open file with any encoding in vim        |
| yito              | diff tool for archlinuxcn repo            |

## Installation

It's recommended to read the dotfiles that interest you and copy what you need, because my dotfiles may not meet your needs. If you want to try these dotfiles, install [chezmoi](https://www.chezmoi.io/install/) and [git](https://git-scm.com/downloads), and choose one of the installation methods. You may get different dotfiles on different machines because chezmoi uses [templates](https://www.chezmoi.io/user-guide/templating/) to change the contents of a file depending on the environment(operating system, hostname, etc).

### Method 1: install all dotfiles

With this method, all dotfiles will be installed in your home directory, and existing dotfiles will be overwritten.

```bash
# download dotfiles
chezmoi init CyrusYip
# see what will happen
chezmoi apply --dry-run --verbose
# install dotfiles
chezmoi apply --verbose
```

### Method 2: merge

With this method, you manually merge existing dotfiles and my dotfiles with `vimdiff`. Vim needs to be installed in this method. Don't use this method if you are not familiar with `vimdiff`.

```bash
# download dotfiles
chezmoi init CyrusYip
# compare and get what you needs
chezmoi merge-all
```
