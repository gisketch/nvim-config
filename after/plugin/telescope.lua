require("telescope").setup({
	defaults = {
		vimgrep_arguments = {
			"rg",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--ignore-case",
		},
		prompt_prefix = "   ",
		selection_caret = "  ",
		entry_prefix = "  ",
		initial_mode = "insert",
		selection_strategy = "reset",
		sorting_strategy = "ascending",
		layout_strategy = "horizontal",
		layout_config = {
			horizontal = {
				prompt_position = "top",
				preview_width = 0.55,
				results_width = 0.8,
			},
			vertical = {
				mirror = false,
			},
			width = 0.87,
			height = 0.80,
			preview_cutoff = 120,
		},
		file_sorter = require("telescope.sorters").get_fuzzy_file,
		file_ignore_patterns = { "node_modules" },
		generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
		path_display = { "truncate" },
		winblend = 5,
		border = {},
		borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
		color_devicons = true,
		use_less = true,
		set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
		file_previewer = require("telescope.previewers").vim_buffer_cat.new,
		grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
		qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
		-- Developer configurations: Not meant for general override
		buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
	},
	extensions = {
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
			-- the default case_mode is "smart_case"
		},
	},
})

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("fzf")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", function()
	builtin.find_files({})
end, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({
		search = vim.fn.input(" "),
		ignore_case = true,
	})
end)

function FindWord()
	builtin.grep_string({
		search = vim.fn.input(" "),
		ignore_case = true,
	})
end

-- Find word everywhere
vim.keymap.set("v", "<leader>pr", 'y:lua FindWord()<CR><C-r>"<CR>')

--
-- vim.api.nvim_set_keymap('n', '<leader>ps', "<cmd>Telescope live_grep<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gr", "<cmd>Telescope lsp_references<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gi", "<cmd>Telescope lsp_implementations<CR>", { noremap = true })

-- vim.api.nvim_set_keymap('n', '<leader>gb', "<cmd>Telescope git_branches<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ph", "<cmd>Telescope file_history history<CR>", { noremap = true })

require("telescope").load_extension("session-lens")

vim.api.nvim_set_keymap("n", "<leader>e", "<cmd>Telescope sessions_picker<CR>", { noremap = true })
