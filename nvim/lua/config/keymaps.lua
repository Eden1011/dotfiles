-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
map("n", "<C-e>", "<cmd>Neotree<cr>") -- open Neotree
map("n", "<C-t>", "<cmd>Telescope find_files<cr>") -- find files in project
map("n", "<C-g>", "<cmd>Telescope live_grep<cr>") -- grep for a pattern in all files
