local catppuccin_theme = require "catppuccin.utils.lualine" "mocha"
catppuccin_theme.normal.c.bg = nil

require('lualine').setup {
    options = {
        theme = catppuccin_theme,
        icons_enabled = true,
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
            -- section_separators = { left = '', right = '' },
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
            lualine_a = { { 'mode', separator = { right = '' }, right_padding = 2 } },
            -- section_separators = { left = '', right = '' },
            -- section_separators = { left = '', right = '' },
            lualine_b = { { 'filename', separator = { right = '' }, right_padding = 2 } },
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
