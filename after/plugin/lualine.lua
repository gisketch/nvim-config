local theme = require("kanagawa.colors").setup().theme
local palette = require("kanagawa.colors").setup().palette

local kanagawa = {}

kanagawa.normal = {
	a = { bg = theme.syn.fun, fg = theme.ui.bg_m3 },
	b = { bg = theme.diff.change, fg = theme.syn.fun },
	c = { bg = theme.ui.bg_p1, fg = theme.ui.fg },
}

kanagawa.terminal = {
	a = { bg = palette.autumnGreen, fg = theme.ui.bg_m3 },
	b = { bg = theme.diff.change, fg = theme.syn.fun },
}

kanagawa.insert = {
	a = { bg = theme.diag.ok, fg = theme.ui.bg },
	b = { bg = theme.ui.bg, fg = theme.diag.ok },
}

kanagawa.command = {
	a = { bg = theme.syn.operator, fg = theme.ui.bg },
	b = { bg = theme.ui.bg, fg = theme.syn.operator },
}

kanagawa.visual = {
	a = { bg = theme.syn.keyword, fg = theme.ui.bg },
	b = { bg = theme.ui.bg, fg = theme.syn.keyword },
}

kanagawa.replace = {
	a = { bg = theme.syn.constant, fg = theme.ui.bg },
	b = { bg = theme.ui.bg, fg = theme.syn.constant },
}

kanagawa.inactive = {
	a = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
	b = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim, gui = "bold" },
	c = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
}

if vim.g.kanagawa_lualine_bold then
	for _, mode in pairs(kanagawa) do
		mode.a.gui = "bold"
	end
end

kanagawa.normal.c.bg = nil

function GetDir()
    -- Example command to get the current directory; adjust as needed
    local current_dir = require('oil').get_current_dir() -- or however you're getting the current dir

    -- Use Lua pattern matching to check for the undesired output
    -- Adjust the pattern as necessary to match the undesired output accurately
    local pattern = "^%d+: tmux attach %-t base tmux new ~ S base %[%- %]$"
    if string.match(current_dir, pattern) then
        -- If the output matches the undesired pattern, return an alternative
        -- This could be an empty string, a default directory, or a message
        return "Alternative value or directory"
    else
        -- If the output is fine, return it
        return current_dir
    end
end

require('lualine').setup {
    options = {
        theme = kanagawa,
        icons_enabled = true,
        component_separators = { left = '', right = '' },
        -- section_separators = { left = '', right = '' },
            section_separators = { left = '', right = '' },
            -- section_separators = { left = '', right = '' },
            disabled_filetypes = {
                statusline = {},
                winbar = {},
            },
            ignore_focus = {},
            always_divide_middle = true,
            globalstatus = false,
            refresh = {
                statusline = 1000,
                tabline = 1000,
                winbar = 1000,
            }
        },
        sections = {
            lualine_a = { { 'mode', separator = { right = '' }, right_padding = 2 } },
            -- section_separators = { left = '', right = '' },
            -- section_separators = { left = '', right = '' },
            lualine_b = { { 'GetDir()', separator = { right = '' }, right_padding = 2 } },
            lualine_c = { 'branch', 'diagnostics', "require('oil').get_current_dir()" },
            lualine_x = { 'getStatusString()', 'fancy_diff', 'fancy_macro' },
            lualine_y = { 'fancy_cwd', { "fileformat", symbols = { unix = "" } }
            },
            lualine_z = { 'location' }
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { 'filename' },
            lualine_y = {},
            lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {},
    }
