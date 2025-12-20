return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"saghen/blink.cmp",
			{
				"folke/lazydev.nvim",
				opts = {
					library = {
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},
		config = function()
			local tools = require("eden.tools")
			local capabilities = require("blink.cmp").get_lsp_capabilities()

			local signs = {
				[vim.diagnostic.severity.ERROR] = "",
				[vim.diagnostic.severity.WARN] = "",
				[vim.diagnostic.severity.HINT] = "󰠠",
				[vim.diagnostic.severity.INFO] = "",
			}

			vim.diagnostic.config({
				signs = {
					text = signs,
				},
				virtual_text = true,
				underline = true,
				update_in_insert = false,
			})

			for _, server in ipairs(tools.lsp_servers) do
				vim.lsp.config(server, {
					capabilities = capabilities,
				})
				vim.lsp.enable(server)
			end
		end,
	},
}
