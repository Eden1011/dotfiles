vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = { noremap = true, silent = true }
local set = vim.keymap.set
local function cmd(command)
	return table.concat({ "<Cmd>", command, "<CR>" })
end

set({ "n", "i", "v" }, "<F1>", "<nop>")

set("n", "<C-w>z", cmd("WindowsMaximize"), { desc = "Maxmizie current window in all directions (Focus)" })
set("n", "<C-w>_", cmd("WindowsMaximizeVertically"), { desc = "Maximize current window vertically" })
set("n", "<C-w>|", cmd("WindowsMaximizeHorizontally"), { desc = "Maximize current window horizontlly" })
set("n", "<C-w>=", cmd("WindowsEqualize"), { desc = "Equalize size of all windows" })

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

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

set("n", "<leader>fp", function()
	local filePath = vim.fn.expand("%:~")
	vim.fn.setreg("+", filePath)
	print("File path copied to clipboard: " .. filePath)
end, { desc = "Copy file path to clipboard" })

vim.keymap.set({ "n", "i", "v" }, "<C-s>", function()
	vim.cmd("wall")
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
end, { desc = "Save all buffers" })

set("n", "<leader>qq", function()
	vim.cmd("wqa")
end, { desc = "Save all buffers and quit" })

local isLspDiagnosticsVisible = true
vim.keymap.set("n", "<leader>lx", function()
	isLspDiagnosticsVisible = not isLspDiagnosticsVisible
	vim.diagnostic.config({
		virtual_text = isLspDiagnosticsVisible,
		underline = isLspDiagnosticsVisible,
	})
end, { desc = "Toggle LSP diagnostics" })

vim.api.nvim_set_keymap("n", "<leader>zf", ":Focus<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>zz", ":Zen<CR>", {})
