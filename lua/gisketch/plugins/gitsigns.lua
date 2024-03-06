return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({
			current_line_blame_opts = {
				virt_text = true,
				virt_text_pos = "eol",
				delay = 0,
				ignore_whitespace = false,
				virt_text_priority = 100,
			},
			preview_config = {
				-- Options passed to nvim_open_win
				border = false,
				style = "minimal",
				relative = "cursor",
				row = 0,
				col = 1,
			},
		})
		vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", { noremap = true, silent = true })
	end,
}
