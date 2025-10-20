return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	opts = {
		formatters_by_ft = require("eden.tools").formatters_by_ft,
		default_format_opts = {
			lsp_format = "fallback",
		},

		format_on_save = {
			timeout_ms = 1000,
			lsp_format = "fallback",
		},
	},
}
