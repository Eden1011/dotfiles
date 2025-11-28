vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = { noremap = true, silent = true }
local set = vim.keymap.set
local api = vim.api

set({ "n", "i", "v" }, "<F1>", "<nop>", opts)

set("n", "H", ":bprev<CR>", opts)
set("n", "L", ":bnext<CR>", opts)

set("n", "<A-h>", ":tabnext<CR>", opts)
set("n", "<A-l>", ":tabprevious<CR>", opts)
set("n", "<leader>tb", ":tabnew<CR>", opts)

set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })

set("v", "<", "<gv", opts)
set("v", ">", ">gv", opts)

set("n", "<Esc>", ":nohl<CR>", { desc = "Clear search highlight", silent = true })

set(
	"n",
	"<c-x>",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Replace word cursor is on globally" }
)
set("v", "<c-x>", [[y:%s/<C-r>"/<C-r>"/gI<Left><Left><Left>]], { desc = "Replace selected text globally" })

api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

set({ "n", "i", "v" }, "<C-s>", function()
	vim.cmd("wall")
	print("Saved changes to all buffers")
end, opts)

set("n", "<leader>z", "<cmd>:Focus<CR>", opts)

set("n", "<leader>l", function()
	if vim.diagnostic.is_enabled() then
		vim.diagnostic.hide()
	else
		vim.diagnostic.show()
	end
end, { desc = "Toggle diagnostics" })

set("n", "<leader>cp", function()
	local path = vim.fn.expand("%:p")
	if path:match("^oil://") then
		path = path:gsub("^oil://", "")
	end
	vim.fn.setreg("+", path)
	print("Copied path to system clipboard: " .. path)
end, { desc = "Copy current absolute file path" })

set("n", "<leader>cx", function()
	local filepath = vim.fn.expand("%:p")
	if filepath == "" then
		print("No file to make executable")
		return
	end
	vim.cmd("!chmod +x " .. vim.fn.shellescape(filepath))
	print("Made executable: " .. filepath)
end, { desc = "Make current file executable" })
