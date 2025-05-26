return {
	"cdmill/focus.nvim",
	cmd = { "Focus", "Zen", "Narrow" },
	opts = {
		window = {
			backdrop = 1,
		},
		plugins = {
			-- tmux = { enabled = true },
			diagnostics = { enabled = true },
		},
	},
}
