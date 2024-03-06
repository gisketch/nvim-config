vim.cmd [[
    autocmd InsertEnter * :set norelativenumber
]]

vim.cmd [[
    autocmd InsertLeave * :set relativenumber
]]

vim.cmd [[
    autocmd BufWritePre * :%s/\s\+$//e
]]


vim.cmd [[
    augroup user_colors
        autocmd!
        autocmd ColorScheme * lua ChangeHighlights()
    augroup END
]]

function ChangeHighlights()
    vim.cmd [[ hi LineNr guifg=none guibg=none ]]
    -- vim.cmd [[ hi NoiceCmdlinePopup guibg=none ]]
    vim.cmd.colorscheme "kanagawa"

    --- COLORS
    local colors = require("kanagawa.colors").setup().palette

    local HighlightColors = {
        -- Telescope Highlights
        TelescopeMatching = { fg = colors.crystalBlue },
        TelescopeSelection = { fg = colors.fujiWhite, bg = colors.waveBlue2, bold = true },
        TelescopePromptPrefix = { bg = colors.waveBlue2, italic = true, bold = true },
        TelescopePromptNormal = { bg = colors.sumiInk4 },
        TelescopeResultsNormal = { bg = colors.sumiInk3 },
        TelescopePreviewNormal = { bg = colors.sumiInk3 },
        TelescopePromptBorder = { bg = colors.sumiInk4, fg = colors.sumiInk4 },
        TelescopeResultsBorder = { bg = colors.sumiInk3, fg = colors.sumiInk3 },
        TelescopePreviewBorder = { bg = colors.sumiInk3, fg = colors.sumiInk3 },
        TelescopePromptTitle = { bg = colors.carpYellow, fg = colors.sumiInk1 },
        TelescopePreviewTitle = { bg = colors.springGreen, fg = colors.sumiInk1 },
        TelescopeResultsTitle = { bg = colors.sumiInk3, fg = colors.sumiInk3 },
        -- Noice Highlights
        NoiceCmdlinePopup = { bg = colors.sumiInk3, fg = colors.oniViolet, italic = true },
        NoiceCmdlinePopupBorder = { bg = colors.sumiInk3, fg = colors.sumiInk3 },
        NoiceCmdlinePopupBorderSearch = { bg = colors.sumiInk3, fg = colors.sumiInk3 },
        NoiceCmdlinePopupTitle = { bg = colors.carpYellow, fg = colors.sumiInk1 },
        -- Notifications
        NotifyINFOBorder = { bg = colors.sumiInk2, fg = colors.sumiInk2, italic = true },
        NotifyINFOBody = { bg = colors.sumiInk2, fg = colors.fujiWhite },
        NotifyERRORBorder = { bg = colors.sumiInk2, fg = colors.sumiInk2, italic = true },
        NotifyERRORBody = { bg = colors.sumiInk2, fg = colors.fujiWhite },
        NotifyWARNBorder = { bg = colors.sumiInk2, fg = colors.sumiInk2, italic = true },
        NotifyWARNBody = { bg = colors.sumiInk2, fg = colors.fujiWhite },
        NotifyDEBUGBorder = { bg = colors.sumiInk2, fg = colors.sumiInk2, italic = true },
        NotifyDEBUGBody = { bg = colors.sumiInk2, fg = colors.fujiWhite },
        NotifyTRACEBorder = { bg = colors.sumiInk2, fg = colors.sumiInk2, italic = true },
        NotifyTRACEBody = { bg = colors.sumiInk2, fg = colors.fujiWhite },
        NotifyINFOTitle = { bg = colors.sumiInk2, fg = colors.springGreen },
        NotifyINFOIcon = { bg = colors.sumiInk2, fg = colors.springGreen },
        NotifyERRORTitle = { bg = colors.sumiInk2, fg = colors.waveRed },
        NotifyERRORIcon = { bg = colors.sumiInk2, fg = colors.waveRed },
        NotifyWARNTitle = { bg = colors.sumiInk2, fg = colors.carpYellow },
        NotifyWARNIcon = { bg = colors.sumiInk2, fg = colors.carpYellow },
        NotifyDEBUGTitle = { bg = colors.sumiInk2, fg = colors.surimiOrange },
        NotifyDEBUGIcon = { bg = colors.sumiInk2, fg = colors.surimiOrange },
        NotifyTRACETitle = { bg = colors.sumiInk2, fg = colors.oniViolet },
        NotifyTRACEIcon = { bg = colors.sumiInk2, fg = colors.oniViolet },
        -- Diagnostics Underlines
        DiagnosticError = { fg = colors.waveRed },
        DiagnosticWarn = { fg = colors.surimiOrange },
        DiagnosticInfo = { fg = colors.oniViolet },
        DiagnosticHint = { fg = colors.springGreen },
        DiagnosticOk = { fg = colors.crystalBlue },
        DiagnosticUnderlineError = { underline = true, sp = colors.waveRed },
        DiagnosticUnderlineWarn = { underline = true, sp = colors.surimiOrange },
        DiagnosticUnderlineInfo = { underline = true, sp = colors.oniViolet },
        DiagnosticUnderlineHint = { underline = true, sp = colors.springGreen },
        DiagnosticUnderlineOk = { underline = true, sp = colors.crystalBlue },
    }

    for hl, col in pairs(HighlightColors) do vim.api.nvim_set_hl(0, hl, col) end
end

vim.cmd [[tnoremap <expr> <C-\><C-\> '<C-\><C-N>"'.nr2char(getchar()).'pi']]
vim.cmd([[set conceallevel=2]])
vim.cmd([[set nofoldenable]])

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.fillchars = 'eob: '
-- vim.opt.colorcolumn = "80"
