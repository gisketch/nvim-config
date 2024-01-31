-- vim.o.guifont = "JetBrainsMono,Apple_Color_Emoji,JetBrainsMono_Nerd_Font:h15:#e-subpixelantialias:#h-none"
vim.o.guifont = "JetBrainsMono Nerd Font:h15:#e-subpixelantialias:#h-none"
-- vim.o.guifont = "JetBrainsMono Nerd Font:h15"
-- vim.o.guifont = "Fisa Code:h14"
-- set termguicolors to enable highlight groups
-- empty setup using defaults

vim.g.neovide_input_macos_alt_is_meta = true
-- -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
vim.g.neovide_transparency = 0.9
vim.g.transparency = 1
vim.g.neovide_floating_shadow = true
vim.g.neovide_floating_z_height = 5
vim.g.neovide_light_angle_degrees = 45
vim.g.neovide_light_radius = 2
vim.g.neovide_window_blurred = true

vim.g.neovide_padding_top = 5
vim.g.neovide_padding_right = 5
vim.g.neovide_padding_bottom = 5
vim.g.neovide_padding_left = 5

vim.g.neovide_remember_window_size = true


vim.g.neovide_floating_blur_amount_x = 20.0
vim.g.neovide_floating_blur_amount_y = 20.0

vim.g.neovide_hide_mouse_when_typing = true

vim.g.neovide_refresh_rate = 144
vim.g.neovide_refresh_rate_idle = 3

vim.g.neovide_font_hinting = 'none'
vim.g.neovide_font_edging = 'subpixelantialias'
vim.opt.linespace = 1


-- ANIMATIONS


vim.g.neovide_cursor_animation_length = 0.05
vim.g.neovide_cursor_trail_size = 0.8

vim.g.neovide_cursor_vfx_mode = "pixiedust"
vim.g.neovide_cursor_vfx_opacity = 300
vim.g.neovide_cursor_vfx_particle_lifetime = 1.5
vim.g.neovide_cursor_vfx_particle_density = 20.0
