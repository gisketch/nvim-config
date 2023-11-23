require("transparent").setup({
    groups = { -- table: default groups
        'Normal', 'NormalNc', 'Comment', 'Constant', 'Special', 'Identifier',
        'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
        'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
        'SignColumn', 'CursorLineNr', 'FloatTitle', 'OilDir', 'NormalFloat', 'NoiceMini', 'MsgArea',
        'TelescopeBorder', 'NotifyBackground', 'TelescopeNormal', 'LSPInlayHint',
        'NoiceLspProgressTitle',
        'NoiceLspProgressClient',
        'NoiceLspProgressSpinner',
        'Title',
        'Constant',
        'NoiceFormatTitle',
        require('transparent').clear_prefix('Noice')
    },
    extra_groups = {
    },                   -- table: additional groups that should be cleared
})
