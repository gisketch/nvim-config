vim.o.guifont = "Fisa Code:h14"
-- set termguicolors to enable highlight groups
-- empty setup using defaults

-- transparency
local alpha = function()
    return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
end
--
vim.g.neovide_input_macos_alt_is_meta = true
--
vim.g.transparency = 0.8

vim.g.neovide_padding_top = 30
vim.g.neovide_padding_right = 5
vim.g.neovide_padding_bottom = 5
vim.g.neovide_padding_left = 5

vim.g.neovide_remember_window_size = true


vim.g.neovide_floating_blur_amount_x = 0.0
vim.g.neovide_floating_blur_amount_y = 0.0

vim.g.neovide_hide_mouse_when_typing = true
