return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			default_file_explorer = true,
			columns = {},
			watch_for_changes = true,
			constrain_cursor = "name",

			use_default_keymaps = false,
			keymaps = {
				["<CR>"] = "actions.select",
				["<leader>vw"] = { "actions.select", opts = { vertical = true } },
				["<leader>sw"] = { "actions.select", opts = { horizontal = true } },
				["<leader>T"] = { "actions.select", opts = { tab = true } },
			},

			delete_to_trash = true,
			view_options = {
				show_hidden = true,
			},
			skip_confirm_for_simple_edits = true,
		})

		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
	end,
}
