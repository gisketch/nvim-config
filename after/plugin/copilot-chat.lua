local select = require('CopilotChat.select')

require('CopilotChat').setup({
    debug = false,                   -- Enable or disable debug mode, the log file will be in ~/.local/state/nvim/CopilotChat.nvim.log
    model = 'gpt-4',                 -- GPT model to use
    temperature = 0.1,               -- GPT temperature
    context = 'buffer',              -- Context to use, 'buffers', 'buffer' or 'manual'
    show_user_selection = true,      -- Shows user selection in chat
    show_system_prompt = false,      -- Shows system prompt in chat
    show_folds = true,               -- Shows folds for sections in chat
    clear_chat_on_new_prompt = false, -- Clears chat on every new prompt
    auto_follow_cursor = true,       -- Auto-follow cursor in chat
    name = nil,            -- Name to use in chat
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
    prompts = {
        Explain = {
            prompt = 'Explain how it works.',
        },
        Tests = {
            prompt = 'Briefly explain how selected code works then generate unit tests.',
        },
        FixDiagnostic = {
            prompt = 'Please assist with the following diagnostic issue in file:',
            selection = select.diagnostics,
        },
        Commit = {
            prompt =
            [[Write commit message for the change. Make sure the title has maximum 50 characters and message is wrapped at 72 characters. Wrap the whole message in code block with language gitcommit. Here is an example commit.
            ```gitcommit
            Add new feature title here

            [Changes]
            - Change 1
            - Change 2
            - Change 3

            Ref: (ClickUP Link Here) - leave it blank
            ```
            ]],
            selection = select.gitdiff,
        },
        CommitStaged = {
            prompt =
            [[Write commit message for the change. Make sure the title has maximum 50 characters and message is wrapped at 72 characters. Wrap the whole message in code block with language gitcommit. Here is an example commit.
            ```gitcommit
            Add new feature title here

            [Changes]
            - Change 1
            - Change 2
            - Change 3

            Ref: (ClickUP Link Here) - leave it blank
            ```
            ]],
            selection = function(source)
                return select.gitdiff(source, true)
            end,
        },

    },
})
