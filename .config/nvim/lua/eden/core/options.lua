local opt = vim.opt

vim.cmd("let g:netrw_banner = 0 ")
vim.g.editorconfig = true

opt.nu = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
--opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undofile = true

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
opt.colorcolumn = "80"

opt.clipboard:append("unnamedplus")
opt.hlsearch = true
opt.mouse = "a"
