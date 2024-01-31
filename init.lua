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

require("lazy").setup({
    {
        "willothy/flatten.nvim",
        config = true,
        lazy = false,
        priority = 1001,
    }
    , { import = "gisketch.plugins" }, { import = "gisketch.plugins.lsp" }
}, {
    install = {
        colorscheme = { "kanagawa" }
    }
})

-- vim.api.nvim_create_autocmd({ "TermOpen", "BufEnter" }, {
--     --startinsert
--     pattern = "*",
--     callback = function()
--         vim.opt_local.laststatus = 3
--         vim.opt_local.relativenumber = false
--         if vim.opt.buftype:get() == "terminal" then
--             -- if vim.bo.buftype == "terminal" then
--             -- vim.cmd("startinsert")
--             vim.opt_local.number = false
--         end
--     end,
-- })



vim.api.nvim_create_autocmd({ "TermClose" }, {
    pattern = "*",
    callback = function()
        vim.opt_local.relativenumber = true
        vim.opt_local.laststatus = 3
    end,
})

vim.cmd.colorscheme "kanagawa-wave"
