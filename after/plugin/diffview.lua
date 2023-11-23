-- Diffview Remaps
vim.api.nvim_set_keymap(
    "n",
    "<leader>dfo",
    "<cmd>DiffviewOpen<CR>",
    { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
    "n",
    "<leader>dfh",
    "<cmd>DiffviewFileHistory %<CR>",
    { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
    "n",
    "<leader>dfc",
    "<cmd>DiffviewClose<CR>",
    { noremap = true, silent = true }
)
