return {
	"olimorris/onedarkpro.nvim",
	priority = 1000,
	lazy = false,
	config = function()
		require("onedarkpro").setup({
			highlights = {
				Visual = { bg = "#3347a1", fg = "#ABB2BF" },
			},
			options = {
				terminal_colors = false,
			},
		})
		vim.cmd("colorscheme onedark_dark")
	end,
}
