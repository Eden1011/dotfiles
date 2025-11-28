# Installation

Input the following steps into your terminal:

**Step 1**: Set up dotfiles:

```bash
git clone https://github.com/Eden1011/dotfiles.git $HOME/dotfiles && cd $HOME/dotfiles
chmod +x run && chmod +x runs/*
```

**Step 2**: Dry run the `run` script to check if it's okay:

```bash
./run --dry-run
```

If it's okay, proceed like so:

```bash
./run
```

or add a (fuzzy) filter to run specific files:

```bash
./run ack # This will match `packages`, 'ackerman', and so on...
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
