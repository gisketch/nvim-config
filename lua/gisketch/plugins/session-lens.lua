return {
    'rmagatti/session-lens',
    dependencies = { 'rmagatti/auto-session', 'nvim-telescope/telescope.nvim' },
    config = function()
        require('session-lens').setup(
            {
                path_display = { 'shorten' },
                theme_conf = { winblend = 0, border = true },
            }
        )
    end
}
