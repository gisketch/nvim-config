require("telescope").load_extension("session-lens")
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

vim.api.nvim_set_keymap('n', '<leader>e', "<cmd>SearchSession<CR>", { noremap = true })
