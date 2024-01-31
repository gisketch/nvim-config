return {
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        branch = "canary",
        dependencies = {
            { "zbirenbaum/copilot.lua" },        -- or github/copilot.vim
            { "nvim-lua/plenary.nvim" },         -- for curl, log wrapper
            { "nvim-telescope/telescope.nvim" }, -- for telescope help actions (optional)
        },
        opts = {
            debug = false,                   -- Enable or disable debug mode, the log file will be in ~/.local/state/nvim/CopilotChat.nvim.log
            model = 'gpt-4',                 -- GPT model to use
            temperature = 0.1,               -- GPT temperature
            context = 'manual',              -- Context to use, 'buffers', 'buffer' or 'manual'
            show_user_selection = true,      -- Shows user selection in chat
            show_system_prompt = false,      -- Shows system prompt in chat
            show_folds = true,               -- Shows folds for sections in chat
            clear_chat_on_new_prompt = true, -- Clears chat on every new prompt
            auto_follow_cursor = true,       -- Auto-follow cursor in chat
            name = 'CopilotChat',            -- Name to use in chat
            separator = '-',                 -- Separator to use in chat
            -- default window options
            window = {
                layout = 'float',       -- 'vertical', 'horizontal', 'float'
                -- Options below only apply to floating windows
                relative = 'editor',    -- 'editor', 'win', 'cursor', 'mouse'
                border = 'none',     -- 'none', single', 'double', 'rounded', 'solid', 'shadow'
                width = 0.8,            -- fractional width of parent
                height = 0.6,           -- fractional height of parent
                row = nil,              -- row position of the window, default is centered
                col = nil,              -- column position of the window, default is centered
                title = 'Copilot Chat', -- title of chat window
                footer = nil,           -- footer of chat window
                zindex = 1,             -- determines if window is on top or below other floating windows
            },
            -- default mappings
            mappings = {
                close = 'q',
                reset = '<C-l>',
                complete = '<Tab>',
                submit_prompt = '<CR>',
                accept_diff = '<C-y>',
                show_diff = '<C-s>',
            },
        },
    },
}
