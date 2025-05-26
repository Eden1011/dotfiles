return {
	"thePrimeagen/harpoon",
	enabled = true,
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup({
			global_settings = {
				save_on_toggle = true,
				save_on_change = true,
			},
		})
		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Harpoon add file" })
		vim.keymap.set("n", "<leader>ha", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)
		vim.keymap.set("n", "<M-1>", function()
			harpoon:list():select(1)
		end, { desc = "Harpoon select file 1" })
		vim.keymap.set("n", "<M-2>", function()
			harpoon:list():select(2)
		end, { desc = "Harpoon select file 2" })
		vim.keymap.set("n", "<M-3>", function()
			harpoon:list():select(3)
		end, { desc = "Harpoon select file 3" })
		vim.keymap.set("n", "<M-4>", function()
			harpoon:list():select(4)
		end, { desc = "Harpoon select file 4" })
	end,
}
