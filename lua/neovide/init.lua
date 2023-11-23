vim.o.guifont = "Fisa Code:h14"
-- set termguicolors to enable highlight groups
-- empty setup using defaults

--
vim.g.neovide_input_macos_alt_is_meta = true
--
-- Helper function for transparency formatting
-- local alpha = function()
--     return string.format("%x", math.floor(255 * vim.g.transparency or 0.9))
-- end
-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
-- vim.g.neovide_transparency = 0.0
-- vim.g.transparency = 0.9

vim.g.neovide_padding_top = 50
vim.g.neovide_padding_right = 5
vim.g.neovide_padding_bottom = 5
vim.g.neovide_padding_left = 5

vim.g.neovide_remember_window_size = true


vim.g.neovide_floating_blur_amount_x = 25.0
vim.g.neovide_floating_blur_amount_y = 25.0

vim.g.neovide_hide_mouse_when_typing = true
