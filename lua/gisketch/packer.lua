-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } },
    }

    use({
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            vim.cmd('colorscheme catppuccin-mocha')
        end
    })

    use {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    }

    use {
        'rmagatti/auto-session',
        config = function()
            require("auto-session").setup {
                log_level = "error",
                auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
            }
        end
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use('nvim-treesitter/nvim-treesitter', { run = ':tsupdate' })
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('tpope/vim-fugitive')
    use {
        'vonheikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- lsp support
            { 'neovim/nvim-lspconfig' },             -- required
            { 'williamboman/mason.nvim' },           -- optional
            { 'williamboman/mason-lspconfig.nvim' }, -- optional

            -- autocompletion
            { 'hrsh7th/nvim-cmp' },     -- required
            { 'hrsh7th/cmp-nvim-lsp' }, -- required
            { 'l3mon4d3/luasnip' },     -- required
        }
    }
    use('jose-elias-alvarez/null-ls.nvim')
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }
    use('xiyaowong/transparent.nvim')
    use {
        "ggandor/leap.nvim",
        config = function() require("leap").add_default_mappings() end
    }
    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }
    use {
        'VonHeikemen/fine-cmdline.nvim',
        requires = {
            { 'MunifTanjim/nui.nvim' }
        }
    }
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })
    use {
        "goolord/alpha-nvim",
    }

    use {
        'rmagatti/session-lens',
        requires = { 'rmagatti/auto-session', 'nvim-telescope/telescope.nvim' },
        config = function()
            require('session-lens').setup(
                {
                    path_display = { 'shorten' },
                    theme_conf = { winblend = 0, border = true },
                    previewer = false
                }
            )
        end
    }
end)
