local catppuccin_theme = require "catppuccin.utils.lualine" "mocha"
catppuccin_theme.normal.c.bg = nil


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
            lualine_b = { { 'GetDir()', separator = { right = '' }, right_padding = 2 } },
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
