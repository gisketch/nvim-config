return {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
        require('catppuccin').setup({
            term_colors = true,
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                notify = true,
                mini = false,
                -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
            },
            color_overrides = {
                all =
                {
                    -- this 16 colors are changed to onedark
                    base = "#282c34",
                    mantle = "#353b45",
                    surface0 = "#3e4451",
                    surface1 = "#545862",
                    surface2 = "#565c64",
                    text = "#abb2bf",
                    rosewater = "#b6bdca",
                    lavender = "#c8ccd4",
                    red = "#e06c75",
                    peach = "#d19a66",
                    yellow = "#e5c07b",
                    green = "#98c379",
                    teal = "#56b6c2",
                    blue = "#61afef",
                    mauve = "#c678dd",
                    flamingo = "#be5046",

                    -- now patching extra palettes
                    maroon = "#e06c75",
                    sky = "#d19a66",

                    -- extra colors not decided what to do
                    pink = "#F5C2E7",
                    sapphire = "#74C7EC",

                    subtext1 = "#BAC2DE",
                    subtext0 = "#A6ADC8",
                    overlay2 = "#9399B2",
                    overlay1 = "#7F849C",
                    overlay0 = "#6C7086",

                    crust = "#11111B",
                }
            }
        })
    end
}
