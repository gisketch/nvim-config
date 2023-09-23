require("gisketch")
require("neovide")
-- disable netrw at the very start of your init.lua
-- vim.g.loaded_netrwPlugin = 1
-- vim.g.loaded_netrw = 1
-- allow copy paste
vim.g.neovide_input_use_logo = 1

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({{import = "gisketch.plugins"}, {import = "gisketch.plugins.lsp"}}, {
    install = {
        colorscheme = { "catppuccin" }
    }

})
