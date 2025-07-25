local opt = vim.opt

vim.cmd("let g:netrw_banner = 0 ")
vim.g.editorconfig = true

opt.nu = true
opt.relativenumber = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.autoindent = true
opt.smartindent = true
opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.autoread = true

opt.incsearch = true
opt.inccommand = "split"

opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true

opt.scrolloff = 8
opt.signcolumn = "yes"

opt.backspace = { "start", "eol", "indent" }

opt.splitright = true
opt.splitbelow = true

opt.isfname:append("@-@")
opt.updatetime = 50

opt.clipboard:append("unnamedplus")
opt.hlsearch = true
opt.mouse = "a"

opt.cmdheight = 0
