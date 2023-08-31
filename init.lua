require("gisketch")
require("neovide")
-- disable netrw at the very start of your init.lua
-- vim.g.loaded_netrwPlugin = 1
-- vim.g.loaded_netrw = 1
-- allow copy paste
vim.g.neovide_input_use_logo = 1


vim.api.nvim_set_keymap('', '<D-v>', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<D-v>', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<D-v>', '"+p', { noremap = true, silent = true })

require('leap').add_default_mappings()

-- require("nvim-tree").setup()


