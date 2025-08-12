return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	opts = {
		formatters_by_ft = {
			go = { "goimports", "gofumpt" },
			lua = { "stylua" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },
			json = { "prettier" },
			jsonc = { "prettier" },
			yaml = { "prettier" },
			markdown = { "prettier" },
			html = { "prettier" },
			css = { "prettier" },
			scss = { "prettier" },
			python = { "isort", "black" },
			sh = { "shfmt" },
			bash = { "shfmt" },
			rust = { "rustfmt" },
			java = { "google-java-format" },
		},
		default_format_opts = {
			lsp_format = "fallback",
		},

		format_on_save = {
			timeout_ms = 1000,
			lsp_format = "fallback",
		},
	},
}
