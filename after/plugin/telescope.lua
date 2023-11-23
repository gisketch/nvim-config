require("telescope").setup {
    defaults = {
        sorting_strategy = "ascending",
    },
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', function()
    builtin.find_files({})
end, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
--
-- vim.api.nvim_set_keymap('n', '<leader>ps', "<cmd>Telescope live_grep<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gr', "<cmd>Telescope lsp_references<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gb', "<cmd>Telescope git_branches<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ph', "<cmd>Telescope file_history history<CR>", { noremap = true })

require("telescope").load_extension("session-lens")

vim.api.nvim_set_keymap('n', '<leader>e', "<cmd>Telescope sessions_picker<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ds', "<cmd>Autosession delete<CR>", { noremap = true })
