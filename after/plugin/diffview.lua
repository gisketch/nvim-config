-- Diffview Remaps
vim.api.nvim_set_keymap(
    "n",
    "<leader>mdfo",
    "<cmd>DiffviewOpen<CR>",
    { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
    "n",
    "<leader>mdfh",
    "<cmd>DiffviewFileHistory %<CR>",
    { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
    "n",
    "<leader>mdfc",
    "<cmd>DiffviewClose<CR>",
    { noremap = true, silent = true }
)
