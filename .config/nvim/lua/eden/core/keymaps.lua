vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = { noremap = true, silent = true }
local set = vim.keymap.set
local api = vim.api
local cmd = vim.cmd

set({ "n", "i", "v" }, "<F1>", "<nop>")
set({ "n", "v" }, "<C-Down>", "}", { desc = "Paragraph down" })
set({ "n", "v" }, "<C-Up>", "{", { desc = "Paragraph up" })

set("n", "<A-h>", ":bprev<CR>", { noremap = true, silent = true })
set("n", "<A-l>", ":bnext<CR>", { noremap = true, silent = true })

set("n", "H", ":tabnext<CR>", { noremap = true, silent = true })
set("n", "L", ":tabprevious<CR>", { noremap = true, silent = true })
set("n", "<leader>tb", ":tabnew<CR>", { noremap = true, silent = true })

set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })

set("v", "<", "<gv", opts)
set("v", ">", ">gv", opts)

set("n", "<leader>Y", [["+Y]], opts)

set({ "n", "v" }, "<leader>d", [["_d]])

set("n", "<leader>f", vim.lsp.buf.format)

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
	cmd("wall")
	api.nvim_feedkeys(api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
end, { desc = "Save all buffers" })

set("n", "<leader>qq", function()
	cmd("q!")
end, { desc = "Quit once without saving" })

set("n", "<leader>Q", function()
	cmd("qall!")
end, { desc = "Quit all without saving" })

set("n", "<leader>zf", "<cmd>:Focus<CR>", {})

set("n", "<leader>l", function()
	if vim.diagnostic.is_enabled() then
		vim.diagnostic.hide()
	else
		vim.diagnostic.show()
	end
end, { desc = "Disable diagnostics" })

set("n", "<leader>cp", function()
	local path = vim.fn.expand("%:p")
	vim.fn.setreg("+", path)
end, { desc = "Copy current absolute file path" })
