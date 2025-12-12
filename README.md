# Installation

Input the following steps into your terminal:

**Step 1**: Set up dotfiles:

```bash
git clone https://github.com/Eden1011/dotfiles.git $HOME/dotfiles && cd $HOME/dotfiles && chmod +x run && chmod +x runs/* && ./run --dry-run
```

Aaaaand you're done!
If you want, you can continue by importing the manual assets (e.g keybinds) below, but so far, you've
successfully set up these dotfiles!

**Step 2**: Proceed with `diy/`:

- Read the [dedicated instruction file](diy/README.md).
- Proceed with its steps.

**Step 3**: Import `GPG` keys:

```bash
gpg --import private-key.asc # Get private key from Proton Pass
```

And set the trust level to `ultimate`:

```bash
gpg --edit-key krzysztof.glowka@pm.me
> trust
> 5 # Or the equivalent of 'ultimate'
> quit
```

Other steps:

- Run `tmux` and press `Prefix + I` to fetch plugins.
- Run `nvim` to download `Lua` plugins.
