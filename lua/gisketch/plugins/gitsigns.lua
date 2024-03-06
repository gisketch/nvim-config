function GitCheckoutNewBranch()
  local branchName = vim.fn.input("Enter new branch name: ")
  if branchName ~= "" then
    vim.cmd("Git checkout -b " .. branchName)
  else
    print("No branch name entered. Operation cancelled.")
  end
end

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
				border = false,
				style = "minimal",
				relative = "cursor",
				row = 0,
				col = 1,
			},
		})
		vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", { noremap = true, silent = true })
		-- vim.api.nvim_set_keymap("n", "<leader>gb", ":Git blame<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>gb", ":Telescope git_branches<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>gco", ":lua GitCheckoutNewBranch()<CR>", { noremap = true, silent = true })
	end,
}
