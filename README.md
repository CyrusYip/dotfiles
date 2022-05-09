# Requirements

[GNU Stow](https://www.gnu.org/software/stow/)

```
# Arch Linux
sudo pacman -Syu stow
```

# Usage

```
# download dotfiles
git clone git@github.com:CyrusYip/dotfiles.git ~/dotfiles
# install all dotfiles
cd ~/dotfiles
stow */
```

# Guides

- [Brandon Invergo - Using GNU Stow to manage your dotfiles](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html)
- [【譯】使用 GNU stow 管理你的點文件 - Farseerfc的小窩](https://farseerfc.me/using-gnu-stow-to-manage-your-dotfiles.html)
