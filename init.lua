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

require('lazy').setup({
    'nvim-tree/nvim-web-devicons',
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        dependencies = { { 'nvim-lua/plenary.nvim' } },
    },
    { "catppuccin/nvim",     as = "catppuccin" },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },

    {
        'rmagatti/auto-session',
        config = function()
            require("auto-session").setup {
                log_level = "error",
                auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
            }
        end
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
    },
    {
        'nvim-treesitter/nvim-treesitter', build = ':TSUpdate',
    },
    "windwp/nvim-ts-autotag",
    ('nvim-treesitter/playground'),
    ('theprimeagen/harpoon'),
    ('tpope/vim-fugitive'),
    {
        'vonheikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- lsp support
            { 'neovim/nvim-lspconfig' },             -- required
            { 'williamboman/mason.nvim' },           -- optional
            { 'williamboman/mason-lspconfig.nvim' }, -- optional

            -- autocompletion
            {
                'hrsh7th/nvim-cmp',
                dependencies = {

                    'abecodes/tabout.nvim',
                }
            },                          -- required
            { 'hrsh7th/cmp-nvim-lsp' }, -- required
            { 'l3mon4d3/luasnip' },     -- required
        }
    },
    ('jose-elias-alvarez/null-ls.nvim'),
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    },
    ('xiyaowong/transparent.nvim'),
    {
        "ggandor/leap.nvim",
        config = function() require("leap").add_default_mappings() end
    },
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    },
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },
    {
        "goolord/alpha-nvim",
    },
    {
        'rmagatti/session-lens',
        dependencies = { 'rmagatti/auto-session', 'nvim-telescope/telescope.nvim' },
        config = function()
            require('session-lens').setup(
                {
                    path_display = { 'shorten' },
                    theme_conf = { winblend = 0, border = true },
                }
            )
        end
    },
    "terrortylor/nvim-comment",
    'm4xshen/autoclose.nvim',
    {
        'stevearc/oil.nvim',
    },
    { "MunifTanjim/nui.nvim" },
    "rcarriga/nvim-notify",
    {
        "folke/noice.nvim",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    },
    'eandrju/cellular-automaton.nvim',
    "numToStr/FTerm.nvim",
    -- Lua
    {
        'abecodes/tabout.nvim',
        config = function()
            require('tabout').setup {
                tabkey = '<Tab>',             -- key to trigger tabout, set to an empty string to disable
                backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
                act_as_tab = true,            -- shift content if tab out is not possible
                act_as_shift_tab = false,     -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
                default_tab = '<C-t>',        -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
                default_shift_tab = '<C-d>',  -- reverse shift default action,
                enable_backwards = true,      -- well ...
                completion = true,            -- if the tabkey is used in a completion pum
                tabouts = {
                    { open = '"', close = '"' },
                    { open = "'", close = "'" },
                    { open = "[", close = "]" },
                    { open = '`', close = '`' },
                    { open = '(', close = ')' },
                    { open = '[', close = ']' },
                    { open = '{', close = '}' }
                },
                ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
                exclude = {} -- tabout will ignore these filetypes
            }
        end,
        wants = { 'nvim-treesitter' }, -- or require if not used so far
    },
    {
    'f-person/git-blame.nvim',
    config = function()
        require('gitblame').setup {
            enabled = true,
        }
    end,
    },
    -- nvim v0.7.2
    ({
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    }),
    { 'akinsho/git-conflict.nvim', version = "*", config = true },
})

