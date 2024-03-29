return {
    "alexghergh/nvim-tmux-navigation",
    config = function()
        local nvim_tmux_nav = require('nvim-tmux-navigation')

        nvim_tmux_nav.setup {
            disable_when_zoomed = true -- defaults to false
        }

        vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft, { noremap = true, silent = true })
        vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown, { noremap = true, silent = true })
        vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp, { noremap = true, silent = true })
        vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight, { noremap = true, silent = true })
        vim.keymap.set('t', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft, { noremap = true, silent = true })
        vim.keymap.set('t', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown, { noremap = true, silent = true })
        vim.keymap.set('t', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp, { noremap = true, silent = true })
        vim.keymap.set('t', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight, { noremap = true, silent = true })
    end
}
