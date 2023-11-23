return {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
        local mocha = require("catppuccin.palettes").get_palette "mocha"

        vim.g.catppuccin_flavour = "mocha" -- Has to be set in order for empty argument to work

        require('catppuccin').setup({
            term_colors = true,
            no_bold = true,
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                notify = true,
                mini = false,
                mason = true,
                leap = true,
                native_lsp = {
                    enabled = true,
                    virtual_text = {
                        errors = { "italic" },
                        hints = { "italic" },
                        warnings = { "italic" },
                        information = { "italic" },
                    },
                    underlines = {
                        errors = { "underline" },
                        hints = { "underline" },
                        warnings = { "underline" },
                        information = { "underline" },
                    },
                    inlay_hints = {
                        background = true,
                    },
                },
                -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
            },
            styles = {
                comments = { "italic" },
                conditionals = { "italic" },
                loops = {},
                functions = {},
                keywords = {},
                strings = { "italic" },
                variables = {},
                numbers = {},
                booleans = { "italic" },
                properties = {},
                types = {},
                operators = {},
            },
            color_overrides = {
                all =
                {
                    -- this 16 colors are changed to onedark
                    base = "#0E0F1A",
                }
            }
        })
    end
}
