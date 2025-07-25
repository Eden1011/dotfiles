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
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			local lspconfig = require("lspconfig")

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

			lspconfig.lua_ls.setup({ capabilites = capabilities })
			lspconfig.html.setup({ capabilities = capabilities })
			lspconfig.cssls.setup({ capabilities = capabilities })
			lspconfig.gopls.setup({ capabilites = capabilities })
			lspconfig.marksman.setup({ capabilites = capabilities })
			lspconfig.pyright.setup({ capabilites = capabilities })
			lspconfig.ts_ls.setup({ capabilites = capabilities })
			lspconfig.clangd.setup({ capabilites = capabilities })
			lspconfig.rust_analyzer.setup({ capabilites = capabilities })
		end,
	},
}
