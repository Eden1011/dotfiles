# Installation

```bash
git clone https://github.com/Eden1011/dotfiles.git
```

```bash
cd $HOME/dotfiles && sudo ./packages
```

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

```bash
curl -s "https://get.sdkman.io" | bash
```

```bash
sdk install java
```

```bash
[ -f $HOME/.bashrc ] && rm $HOME/.bashrc
```

```bash
cd $HOME/dotfiles && stow -t $HOME .
```

As for `tmux` please fetch plugins on first startup of with `Prefix + I`. `Neovim` plugins will get cloned by default.


# Don't forget:

- `ZZ` exits from `nvim` with saving, and `ZQ` exits without saving.
