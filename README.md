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

**Step 2.5**: Install `Java 21` with `SDKMAN`:

```bash
curl -s "https://get.sdkman.io" | bash
sdk install java
```

**Step 3**: Remove old `.bashrc` if it exists, and stow:

```bash
[ -f $HOME/.bashrc ] && rm $HOME/.bashrc
cd $HOME/dotfiles && chmod 600 .config/glab-cli/aliases.yml && stow -t $HOME .
```

**Step 4**: Auth into git providers:

```bash
gh auth login && gl auth login
```

Other steps:

- Run `tmux` and press `Prefix + I` to fetch plugins.
- Run `nvim` to download `Lua` plugins.
