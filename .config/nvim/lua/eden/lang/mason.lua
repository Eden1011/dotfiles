return {
	"williamboman/mason.nvim",
	build = ":MasonUpdate",
	lazy = false,
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			automatic_enable = false,
			ensure_installed = {
				"lua_ls",
				"html",
				"cssls",
				"gopls",
				"marksman",
				"pyright",
				"ts_ls",
				"clangd",
				"rust_analyzer",
				"jdtls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"gofumpt",
				"goimports",
				"isort",
				"black",
				"eslint_d",
				"shfmt",
				"google-java-format",
			},
		})
	end,
}
