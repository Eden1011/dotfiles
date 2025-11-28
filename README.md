# Installation

Input the following steps into your terminal:

**Step 1**: Set up dotfiles:

```bash
git clone https://github.com/Eden1011/dotfiles.git $HOME/dotfiles && cd $HOME/dotfiles
chmod +x run && chmod +x runs/*
```

**Step 2**: Execute the `run` script in one of the several ways:

```bash
./run --dry-run # Check what will be executed
./run ack       # This will execute `packages`, 'ackerman', and so on...
./run           # This will execute all
```

**Step 2**: Install `opencode`:

```bash
curl -fsSL https://opencode.ai/install | bash
opencode auth login
```

**Step 3**: Proceed with `diy/`:

- Read the [dedicated instruction file](diy/README.md).
- Proceed with its steps.

Other steps:

- Run `tmux` and press `Prefix + I` to fetch plugins.
- Run `nvim` to download `Lua` plugins.

Note:

- If `tmux -V` < 3.6, then run `opencode` outside a `tmux` session because the `system` theme doesn't work.
