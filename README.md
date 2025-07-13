# Dotfiles

Managed using GNU Stow.

Place repo into `$HOME`, then use `stow -t $HOME .` to symlink the inner `.config`.

Problem stowing? Use the `-R` flag to restow, or just delete the conflicting files and rerun the above command.

Dependencies are: `alacritty`, `nvim`, `tmux`.

Sub-dependencies: `tpm`, `fzf` (otherwise tmux-sessionx wont launch).
