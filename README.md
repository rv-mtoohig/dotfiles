# DotFiles

Personal dotfiles for my Red Ventures work Macbook.

Clone this repo to `~/.dotfiles` then follow instructions below.

## 1. Install

Install required tools and apps with `brew`.

```
cd ~/.dotfiles
brew bundle
```

## 2. Configure

### Zsh

Set Zsh configuration.

```
ln -s ~/.dotfiles/zsh ~/.zsh
ln -s ~/.dotfiles/zshrc ~/.zshrc
```

### Git

Set git configuration file including global `.gitignore` file.

```
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore_global ~/.gitignore_global
```

### Starship Prompt

Set config file for starship prompt.

```
ln -s ~/.dotfiles/starship.toml ~/.config/starship.toml
```

### NeoVim

Set config dir for neovim.

```
ln -s ~/.dotfiles/nvim ~/.config/nvim
```

### Amethyst

Set config file for amethyst tiling window manager.

```
ln -s ~/.dotfiles/amethyst.yml ~/.amethyst.yml
```
