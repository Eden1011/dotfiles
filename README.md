# Installation

Input the following steps into your terminal:

**Step 1**: Clone the repository and install packages:

```bash
git clone https://github.com/Eden1011/dotfiles.git && cd $HOME/dotfiles && sudo ./packages
```

**Step 2**: Install `tpm`:

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

**Step 2.5**: Install sdk's with `SDKMAN`:

```bash
curl -s "https://get.sdkman.io" | bash
sdk install java && sdk install gradle && sdk install maven && sdk install groovy && sdk install kotlin
```

**Step 3**: Remove old `.bashrc` if it exists, and stow:

```bash
[ -f $HOME/.bashrc ] && rm $HOME/.bashrc
cd $HOME/dotfiles && stow -t $HOME .
```

Other steps:

- Run `tmux` and press `Prefix + I` to fetch plugins.
- Run `nvim` to download `Lua` plugins.
