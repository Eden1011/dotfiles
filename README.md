# Dotfiles

Managed using GNU Stow.

Place repo into `$HOME`, then use `stow -t $HOME .` to symlink the inner `.config`.

Problem stowing? Use the `-R` flag to restow, or just delete the conflicting files and rerun the above command.

Dependencies are: `alacritty`, `nvim`, `tmux` (fetch plugins on first startup of `tmux` with `Prefix + I`).

Sub-dependencies: `tpm`, `fzf`, `rg` (`ripgrep`)

Having problems with `eslint_d` or `ts_ls`?

- If Mason couldn't didn't find it then install it with `npm -g eslint_d`
- If `ts_ls` won't start on a `js` file, and you get an error regarding linting:
  > Could not parse linter output due to: Expected value but found invalid token at character 1 output: Error: Could not find config file.
  - Then you must run `npm init @eslint/config@latest` inside the `js` project repo.

Don't forget:

- `ZZ` exits from nvim with saving, and `ZQ` exits without saving.
