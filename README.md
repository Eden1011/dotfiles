# Dotfiles

Managed using GNU Stow.

Place repo into `$HOME`, then use `stow -t $HOME .` to symlink the inner `.config`.

Problem stowing? Use the `-R` flag to restow, or just delete the conflicting files and rerun the above command.

Dependencies are: `alacritty`, `nvim`, `tmux` (fetch plugins on first startup of `tmux` with `Prefix + I`).

Sub-dependencies: `tpm`, `fzf`, `rg` (`ripgrep`)

Don't forget:

- `ZZ` exits from nvim with saving, and `ZQ` exits without saving.

Install the following packages (**keep updating this**):

- git
- kdiff3
- bat
- zoxide
- fzf
- ripgrep
- tpm
- alacritty
- stow
- mpv
- zip
- treesitter (yes, the system package, need the cli)
- tmux
- sdkman

- Languages: rust, zig, go
