local function close_hidden_buffers()
	local visible_buffers = {}

	for tab = 1, vim.fn.tabpagenr("$") do
		local buflist = vim.fn.tabpagebuflist(tab)
		for _, bufnr in ipairs(buflist) do
			visible_buffers[bufnr] = true
		end
	end

	for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
		if vim.api.nvim_buf_is_loaded(bufnr) and not visible_buffers[bufnr] then
			pcall(vim.api.nvim_buf_delete, bufnr, {})
		end
	end
end

vim.keymap.set("n", "<leader>bo", close_hidden_buffers, {
	noremap = true,
	silent = true,
	desc = "Close hidden buffers",
})
