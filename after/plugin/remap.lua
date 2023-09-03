-- In insert mode, remap ctrl + h to act like the left arrow key
vim.cmd('inoremap <C-h> <Left>')

-- In insert mode, remap ctrl + j to act like the down arrow key
vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', { noremap = true, silent = true })

-- In insert mode, remap ctrl + k to act like the up arrow key
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', { noremap = true, silent = true })

-- In insert mode, remap ctrl + l to act like the right arrow key
vim.api.nvim_set_keymap('i', '<C-l>', '<Right>', { noremap = true, silent = true })


vim.api.nvim_set_keymap('', '<D-v>', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<D-v>', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<D-v>', '"+p', { noremap = true, silent = true })

vim.api.nvim_set_keymap('c', '<D-v>', '<C-R>+', { noremap = true, silent = true })
