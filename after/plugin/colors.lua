function ColorMyPencils()
    -- Change the normal text color in Telescope
    vim.cmd [[ hi Visual guifg=none guibg=#343452 ]]
    vim.cmd [[ hi TelescopeNormal guifg=#c2caf1 guibg=none ]]
    vim.cmd [[ hi LineNr guifg=#c2caf1 guibg=none ]]
    vim.cmd [[ hi EndOfBuffer guifg=#c2caf1 guibg=none ]]

    -- Added for transparency
end

ColorMyPencils()

