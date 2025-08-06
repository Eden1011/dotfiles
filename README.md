# Installation

Input the following steps into your terminal:

Step 1: Clone the repository and install packages

```bash
git clone https://github.com/Eden1011/dotfiles.git && cd $HOME/dotfiles && sudo ./packages
```

Step 2: Install sub-dependencies

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tmp && curl -s "https://get.sdkman.io" | bash
```

Step 2.5: Install `Java 21` with `SDKMAN`:

```bash
sdk install java
```

Step 3: Remove old `.bashrc` if it exists, and stow dotfiles

```bash
[ -f $HOME/.bashrc ] && rm $HOME/.bashrc

cd $HOME/dotfiles && stow -t $HOME .
```

Other steps:

- Run `tmux` and press `Prefix + I` to fetch plugins.
- Run `nvim` to download `Lua` plugins.

# Don't forget:

- `ZZ` exits from `nvim` with saving, and `ZQ` exits without saving.
