# Installation

Input the following steps into your terminal:

**Step 1**: Set up dotfiles:

```bash
git clone https://github.com/Eden1011/dotfiles.git $HOME/dotfiles && cd $HOME/dotfiles
chmod +x run && chmod +x runs/* && ./run --dry-run
```

Aaaaand you're done!
If you want you can continue by importing the manual assets below, but so far, you've
successfully set up these dotfiles!

**Step 2**: Proceed with `diy/`:

- Read the [dedicated instruction file](diy/README.md).
- Proceed with its steps.

Other steps:

- Run `tmux` and press `Prefix + I` to fetch plugins.
- Run `nvim` to download `Lua` plugins.

Note:

- If `tmux -V` < 3.6, then run `opencode` outside a `tmux` session because the `system` theme doesn't work.

```

```
