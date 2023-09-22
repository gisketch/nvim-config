require('catppuccin').setup({
    term_colors = true,
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"

vim.cmd [[ hi Visual guifg=none guibg=#343452 ]]
vim.cmd [[ hi TelescopeNormal guifg=#c2caf1 guibg=none ]]
vim.cmd [[ hi LineNr guifg=#CCD5F3 guibg=none ]]
vim.cmd [[ hi EndOfBuffer guifg=#c2caf1 guibg=none ]]
