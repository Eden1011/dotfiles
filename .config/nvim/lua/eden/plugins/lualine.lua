return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		local dark_theme = {
			normal = {
				a = { fg = '#ABB2BF', bg = '#000000', gui = 'bold' },
				b = { fg = '#ABB2BF', bg = '#000000' },
				c = { fg = '#ABB2BF', bg = '#000000' },
			},
			insert = {
				a = { fg = '#ABB2BF', bg = '#000000', gui = 'bold' },
				b = { fg = '#ABB2BF', bg = '#000000' },
			},
			visual = {
				a = { fg = '#ABB2BF', bg = '#000000', gui = 'bold' },
				b = { fg = '#ABB2BF', bg = '#000000' },
			},
			replace = {
				a = { fg = '#ABB2BF', bg = '#000000', gui = 'bold' },
				b = { fg = '#ABB2BF', bg = '#000000' },
			},
			command = {
				a = { fg = '#ABB2BF', bg = '#000000', gui = 'bold' },
				b = { fg = '#ABB2BF', bg = '#000000' },
			},
			inactive = {
				a = { fg = '#ABB2BF', bg = '#000000' },
				b = { fg = '#ABB2BF', bg = '#000000' },
				c = { fg = '#ABB2BF', bg = '#000000' },
			},
		}

		require("lualine").setup({
			options = {
				theme = dark_theme,
			},
		})
	end
}
