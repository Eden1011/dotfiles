# Dotfiles

Managed using GNU Stow.

Place repo into `$HOME`, then use `stow -t $HOME .` to symlink the inner `.config`.

Problem stowing? Use the `-R` flag to restow.

Dependencies are: `alacritty`, `nvim (nightly)`, `tmux`
Sub-dependencies: `tpm`

## Tmux

Prefix: `<C-Space>`
To configure `tmux` press `Prefix + I`.
Keybindings:

Sessions management:

- `Prefix + o` to open `session-x` session management
- `Prefix + <C-s>` to save **all** sessions to disk (are saved automatically every 15minutes).
- `Prefix + <C-r>` to restore **all** sessions from disk, even into `session-x`.
- `Prefix + X` to kill current session (doesn't delete from saved sessions)
- `Prefix + ( or )` to switch to previous or next session
- Deprecated because of `session-x`:
  - ~~`Prefix + D` to select which session to detach from~~
  - ~~`Prefix + S` to select a session~~

Terminal interaction:

- `Prefix + v` to enter Vi mode
  - Vi: `/` to grep text (press `n` or `N` to switch between highlights),
  - Vi: `v` to select text (move around with Vi keybindings),
  - Vi: `y` to yank selection to system clipboard.

Window & pane control:

- `Prefix + Num` to switch to pane
- `Prefix + h, j, k, l` to switch between panes
- `Prefix + <S- h, j, k, l>` to resize panes (by 7 units)
- `Prefix + |` to split window horizontally
- `Prefix + -` to split window vertically

## Neovim

The leader key (`<leader>`) is `<space>`.

Plugin keybindings:

- `<C-t>` to open `Telescope find_files` (`ff` if inside Neo-tree)
- `<C-g>` to open `Telescope live_grep` (`fg` if inside Neo-tree)
- Related: `<leader>sb` to find text usage within current buffer

Window management:
Note: Neo-tree is unaffected by plugin resizing if the selected buffer is not Neo-tree, otherwise, resizing applies. Manual resizing always applies.

- `<C- h, j, k, l>` to switch between windows
- Resize windows, by plugin:
  - `<C-w>a` to maximize current window in all directions (focus)
  - `<C-w>v`, `<C-w>h` to maximize window vertically or horizontally
  - `<C-w>e` to equalize width of all windows
- Resize windows, by hand:
  - `<C-w>+`, `<C-w>-` to increase or decrease window height by 3 units
  - `<C-w>[`, `<C-w>]` to increase or decrease window width by 3 units
    Note: manual handling of window size will activate automatic plugin resizing for correctness

Navigating inside buffer:

- `<C-Down>` to move a paragraph down (previously `}`)
- `<C-Up>` to move a paragraph up (previously `{`)
- `s or S {char}{char}` to _leap_ a text after or before the cursor, that contains those characters. Press a highlighted tag to jump to a different match.

Navigating different buffers and buffer actions:

- `<S- h, l>` go to previous, next buffer (tab)
- Actions:
  - `<leader>bo` to delete all other buffers
  - `<leader>bd` to delete current buffer
  - `<leader>be` to open buffer tree (Neo-tree)

Neo-tree actions:
Note: below keybindings work only inside the Neo-tree buffer

- `#` to fuzzy find a term inside the current tree
- `<`, `>` to move to previous, or next Neo-tree type (files, open buffers, git)
- `z`, `Z` to close and open all nodes inside the tree
- `s, S (on file)` to open a new horizontal or vertical window (close single window with `:q`)
- `o` to see file details
- Deprecated: _uvlibs_ refreshes tree automatically ~~`R` to refresh tree~~
- and `?` to look up the rest of Neo-tree commands
  Telescope works inside the Neo-tree buffer. Use `ff` or `fg`.

Other stuff:

- `:Mason` for configuring LSPs.

## Vimium C (Firefox extension)

Place the `.json` file inside the vimium settings page.
You can access it using the plugin inside Firefox.

keybindings:

- `f` to open a link in the current tab
- `F` to open a link in a new tab
- `j` to scroll down
- `k` to scroll up
- `h` to scroll left
- `l` to scroll right
- `{`, `}` to scroll a page up, or down (more units than `j`, or `k`)
- `gg` to scroll to the top of the page
- `G` to scroll to the bottom of the page
- `<S-h>` to move to previous tab
- `<S-l>` to move to next tab
- `/` to enter find mode
- `w` to close tab
- `t` to make tab
- `o` to open `Vomnibar`
- `O` to open `Vomnibar`, but the link opens in a new tab
- `q`, to go back (previously `<-`, or left arrow, inside the GUI)
- `e`, same as `q`, but go forward
