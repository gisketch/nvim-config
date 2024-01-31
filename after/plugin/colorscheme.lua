-- setup must be called before loading
-- vim.cmd.colorscheme "gruvbox"
-- vim.cmd.colorscheme "catppuccin"
vim.cmd [[ hi LineNr guifg=none guibg=none ]]
vim.cmd [[ hi NoiceCmdlinePopup guibg=none ]]

-- vim.cmd [[ hi Visual guifg=none guibg=#343452 ]]
-- vim.cmd [[ hi TelescopeNormal guifg=#c2caf1 guibg=none ]]
-- vim.cmd [[ hi LspInlayHint guifg=#8D90B9 guibg=none ]]
-- vim.cmd [[ hi NoiceMini guifg=#c2caf1 guibg=#c2caf1 ]]


-- vim.cmd [[ hi LspInlayHint gui=italic cterm=italic ]]
-- vim.cmd [[ hi CodeiumSuggestion guifg=#6c7086 ]]

vim.cmd.colorscheme "kanagawa"

--- COLORS
-- local colors = require("kanagawa.colors").setup().palette
--
-- local HighlightColors = {
--     -- Telescope Highlights
--     TelescopeMatching = { fg = colors.crystalBlue },
--     TelescopeSelection = { fg = colors.fujiWhite, bg = colors.waveBlue2, bold = true },
--     TelescopePromptPrefix = { bg = colors.waveBlue2, italic = true, bold = true },
--     TelescopePromptNormal = { bg = colors.sumiInk4 },
--     TelescopeResultsNormal = { bg = colors.sumiInk3 },
--     TelescopePreviewNormal = { bg = colors.sumiInk3 },
--     TelescopePromptBorder = { bg = colors.sumiInk4, fg = colors.sumiInk4 },
--     TelescopeResultsBorder = { bg = colors.sumiInk3, fg = colors.sumiInk3 },
--     TelescopePreviewBorder = { bg = colors.sumiInk3, fg = colors.sumiInk3 },
--     TelescopePromptTitle = { bg = colors.carpYellow, fg = colors.sumiInk1 },
--     TelescopePreviewTitle = { bg = colors.springGreen, fg = colors.sumiInk1 },
--     -- Noice Highlights
--     NoiceCmdlinePopup = { bg = colors.sumiInk3, fg = colors.oniViolet, italic = true },
--     NoiceCmdlinePopupBorder = { bg = colors.sumiInk3, fg = colors.sumiInk3 },
--     NoiceCmdlinePopupTitle = { bg = colors.carpYellow, fg = colors.sumiInk1 },
--     NoicePopupmenu = { bg = colors.sumiInk3, fg = colors.oniViolet, italic = true },
--
--     -- Notifications
--     NotifyINFOBorder = { bg = colors.sumiInk2, fg = colors.sumiInk2, italic = true },
--     NotifyINFOBody = { bg = colors.sumiInk2, fg = colors.fujiWhite },
--     NotifyERRORBorder = { bg = colors.sumiInk2, fg = colors.sumiInk2, italic = true },
--     NotifyERRORBody = { bg = colors.sumiInk2, fg = colors.fujiWhite },
--     NotifyWARNBorder = { bg = colors.sumiInk2, fg = colors.sumiInk2, italic = true },
--     NotifyWARNBody = { bg = colors.sumiInk2, fg = colors.fujiWhite },
--     NotifyDEBUGBorder = { bg = colors.sumiInk2, fg = colors.sumiInk2, italic = true },
--     NotifyDEBUGBody = { bg = colors.sumiInk2, fg = colors.fujiWhite },
--     NotifyTRACEBorder = { bg = colors.sumiInk2, fg = colors.sumiInk2, italic = true },
--     NotifyTRACEBody = { bg = colors.sumiInk2, fg = colors.fujiWhite },
--
--     NotifyINFOTitle = { bg = colors.sumiInk2, fg = colors.springGreen },
--     NotifyINFOIcon = { bg = colors.sumiInk2, fg = colors.springGreen },
--     NotifyERRORTitle = { bg = colors.sumiInk2, fg = colors.waveRed },
--     NotifyERRORIcon = { bg = colors.sumiInk2, fg = colors.waveRed },
--     NotifyWARNTitle = { bg = colors.sumiInk2, fg = colors.carpYellow },
--     NotifyWARNIcon = { bg = colors.sumiInk2, fg = colors.carpYellow },
--     NotifyDEBUGTitle = { bg = colors.sumiInk2, fg = colors.surimiOrange },
--     NotifyDEBUGIcon = { bg = colors.sumiInk2, fg = colors.surimiOrange },
--     NotifyTRACETitle = { bg = colors.sumiInk2, fg = colors.oniViolet },
--     NotifyTRACEIcon = { bg = colors.sumiInk2, fg = colors.oniViolet },
--
-- }
--
-- for hl, col in pairs(HighlightColors) do vim.api.nvim_set_hl(0, hl, col) end
