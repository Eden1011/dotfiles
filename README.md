# Installation

Input the following one-liner into your terminal:

```bash
git clone https://github.com/Eden1011/dotfiles.git && 
cd $HOME/dotfiles && sudo ./packages && 
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm && 
curl -s "https://get.sdkman.io" && 
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh" && 
sdk install java && 
[ -f $HOME/.bashrc ] && rm $HOME/.bashrc && stow -t $HOME .
```

As for `tmux` please fetch plugins on first startup with `Prefix + I`. 

`Nvim` plugins will get cloned by default on startup.


# Don't forget:

- `ZZ` exits from `nvim` with saving, and `ZQ` exits without saving.
