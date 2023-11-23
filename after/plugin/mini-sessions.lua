-- using the mini plugins
require('mini.sessions').setup({
    -- Whether to read latest session if Neovim opened without file arguments
    autoread = false,
    -- Whether to write current session before quitting Neovim
    autowrite = true,
    -- Directory where global sessions are stored (use `''` to disable)
    directory = '/Users/Home/.vim/sessions', --<"session" subdir of user data directory from |stdpath()|>,
    -- File for local session (use `''` to disable)
    file = ''                     -- 'Session.vim',
})
