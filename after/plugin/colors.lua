function ColorMyPencils(color)
    color = color or "catppuccin"
    vim.cmd("colorscheme " .. color)
    vim.cmd [[ hi Visual guifg=none guibg=#343452 ]]
    -- Change the foreground and background colors of the selected item
    vim.cmd [[ hi TelescopeSelection guifg=#ffffff guibg=#343452 ]]
    -- Change the normal text color in Telescope
    vim.cmd [[ hi TelescopeNormal guifg=#c2caf1 guibg=none ]]
    vim.cmd [[ hi LineNr guifg=#c2caf1 guibg=none ]]
    vim.cmd [[ hi EndOfBuffer guifg=#c2caf1 guibg=none ]]
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })

    -- Added for transparency
end

ColorMyPencils()
