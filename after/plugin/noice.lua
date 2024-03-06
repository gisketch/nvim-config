require("noice").setup({
    views = {
        mini = {
            win_options = {
                winblend = 0,
            },
        },
        cmdline_popup = {
            win_options = {
                winblend = 10,
            },
        },
    },
    lsp = {
        progress = {
            enabled = true,
        },
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
        },
    },
    cmdline = {
        enabled = true,
    },
    messages = {
        view = "notify",
    },
    -- you can enable a preset for easier configuration
    presets = {
        bottom_search = false,        -- use a classic bottom cmdline for search
        command_palette = false,      -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = true,            -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true,        -- add a border to hover docs and signature help
    },
})

require("telescope").load_extension("noice")

vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>")
