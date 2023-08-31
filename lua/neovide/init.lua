vim.o.guifont = "Fisa Code:h14"
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
-- empty setup using defaults

-- transparency
local alpha = function()
    return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
end

vim.g.neovide_input_macos_alt_is_meta = true

vim.g.neovide_transparency = 0.0
vim.g.transparency = 0.8 
vim.g.neovide_background_color = "#1e1e2e" .. alpha()


vim.g.neovide_scroll_animation_length = 0.3