

vim.api.nvim_set_keymap('', '<D-v>', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<D-v>', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<D-v>', '"+p', { noremap = true, silent = true })

vim.api.nvim_set_keymap('c', '<D-v>', '<C-R>+', { noremap = true, silent = true })
