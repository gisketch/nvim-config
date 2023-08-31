local alpha = require'alpha'
local dashboard = require 'alpha.themes.dashboard'
dashboard.section.header.val = {
    [[        _     _        _       _     ]],
    [[       (_)   | |      | |     | |    ]],
    [[   __ _ _ ___| | _____| |_ ___| |__  ]],
    [[  / _` | / __| |/ / _ \ __/ __| '_ \ ]],
    [[ | (_| | \__ \   <  __/ || (__| | | |]],
    [[  \__, |_|___/_|\_\___|\__\___|_| |_|]],
    [[   __/ |                             ]],
    [[  |___/                              ]],
}
dashboard.section.buttons.val = {
    dashboard.button("e", "View Sessions", ":SearchSession<CR>"),
    dashboard.button("pv", "Project Viewer",
        ":Telescope file_browser path=" .. vim.fn.escape(vim.fn.getcwd(), ' ') .. " select_buffer=true<CR>"
    ),
    dashboard.button("pf", "Project Files", ":lua require('telescope.builtin').find_files()<CR>"),
    dashboard.button("q", "Quit NVIM", ":qa<CR>"),
}
local handle = io.popen('fortune')
local fortune = handle:read("*a")
handle:close()
dashboard.section.footer.val = fortune

dashboard.config.opts.noautocmd = true

vim.cmd [[autocmd User AlphaReady echo 'ready']]

alpha.setup(dashboard.config)
