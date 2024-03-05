vim.g.mapleader = " "

-- vim.keymap.set("n", "<leader>e", ':Telescope projects<CR>',{ noremap = true, silent = true })
-- Define a local function to open :Oil and then preview
function open_oil_and_preview()
    -- Open :Oil
    vim.cmd("Oil")

    -- Wait a bit to ensure :Oil has fully loaded
    vim.cmd("sleep 50m")

    -- Call the actions.preview callback function
    require('oil.actions').preview.callback()
end

-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap(
    "n",
    "<leader>pv",
    ":Oil<CR>",
    { noremap = true, silent = true }
)


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set({ "n", "v" }, "<leader>h", "^")
vim.keymap.set({ "n", "v" }, "<leader>l", "$")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])



-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("c", "<C-v>", '<C-r>"')

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<leader>mir", "<cmd>CellularAutomaton make_it_rain<CR>")
-- vim.keymap.set("n", "<leader>gcu", "<cmd>GitBlameCopyCommitURL<CR>")
-- vim.keymap.set("n", "<leader>gco", "<cmd>GitBlameOpenCommitURL<CR>")

vim.keymap.set("n", "<leader>bt", "<cmd>GitBlameToggle<CR>")
vim.keymap.set("n", "<leader>mnp", "<cmd>NoNeckPain<CR>")

vim.keymap.set("n", "<leader>mtt", "<cmd>TransparentToggle<CR>")
vim.keymap.set("n", "<leader>mlh", "<cmd>Noice telescope<CR>")

vim.api.nvim_set_keymap('', '<D-v>', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<D-v>', '"+p', { noremap = true, silent = true })


-- CREATE A JSON STRINGIFY COMMAND
vim.cmd([[command! -nargs=0 Stringify :%s/"/\\"/g | %s/\n//g]])

vim.api.nvim_set_keymap(
    "n",
    "<C-s>",
    '<cmd>Stringify<CR>I"<Esc>A"',
    { noremap = true, silent = true }
)

-- NEORG

vim.api.nvim_set_keymap(
    "n",
    "<leader>njt",
    -- add cd ~/notes before this command
    '<cmd>Neorg workspace notes<CR>:Neorg journal today<CR>',
    { noremap = true, silent = true }
)

-- SAVE SESSION


save_session = function()
    local session_name = vim.fn.input("Enter session name: ")
    if session_name ~= "" then
        local cmd = "mksession! ~/.vim/sessions/" .. session_name
        vim.cmd(cmd)
        print("Session saved as: " .. session_name)
    else
        print("No session name provided. Session not saved.")
    end
end

-- Set the key mapping
vim.api.nvim_set_keymap('n', '<leader>S', ':lua save_session()<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>rnv', '<Plug>RestNvim', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>rnp', '<Plug>RestNvimPreview', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>rnl', '<Plug>RestNvimLast', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>mf', ':!npx eslint --fix %<CR>:e!<CR>', { noremap = true, silent = true })

-- TERMMINAL
-- vim.api.nvim_set_keymap('n', '<leader>t', ':terminal tmux attach -t base || tmux new -s base <CR>',
--     { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>t', ':ToggleTerm<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })

-- SPLIT
vim.api.nvim_set_keymap('n', '<M-v>', ':vsplit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-s>', ':split<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<M-v>', '<C-\\><C-n>:vsplit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<M-s>', '<C-\\><C-n>:split<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<D-v>', '<C-\\><C-o>"+p', { noremap = true, silent = true })

-- Navigation
vim.api.nvim_set_keymap('n', '<C-f>', '<C-w>w', { noremap = true, silent = true })

-- Close buffer
vim.api.nvim_set_keymap('n', '<M-x>', 'ZZ', { noremap = true, silent = true })

-- vim.api.nvim_set_keymap('n', '<leader>e', ":lua MiniStarter.open()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>dd', "/<C-r><C-w><CR>", { noremap = true })

-- query request
vim.api.nvim_set_keymap('n', '<leader>xr', ":call VrcQuery()<CR>", { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>gn', ":TodoNote<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>cco', ":CopilotChatOpen<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ccq',
    [[<Cmd>lua require('CopilotChat').ask(vim.fn.input("Buffer: "), { selection = require("CopilotChat.select").buffer })<CR>]],
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<leader>ccv',
    [[<Cmd>lua require('CopilotChat').ask(vim.fn.input("Selection: "), { selection = require("CopilotChat.select").visual })<CR>]],
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ccc',
    [[<Cmd>lua require('CopilotChat').ask(vim.fn.input("Talk: "))<CR>]],
    { noremap = true, silent = true })


-- tabs
vim.api.nvim_set_keymap('n', '<M-n>', ':tabnew<CR>', { noremap = true, silent = true })
-- next tab as control shift L
vim.api.nvim_set_keymap('n', '<C-S-l>', ':tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-S-h>', ':tabprevious<CR>', { noremap = true, silent = true })


-- codeblock
-- Define a function to surround text with backticks and ask for language
function _G.surround_with_backticks()
    local start_pos = vim.fn.getpos("'<")
    local end_pos = vim.fn.getpos("'>")
    local lines = vim.api.nvim_buf_get_lines(0, start_pos[2] - 1, end_pos[2], false)
    local language = vim.fn.input("Enter language: ")
    local surrounded_text = "```" .. language .. "\n" .. table.concat(lines, "\n") .. "\n```"
    local new_lines = {}
    for s in surrounded_text:gmatch("[^\r\n]+") do
        table.insert(new_lines, s)
    end
    vim.api.nvim_buf_set_lines(0, start_pos[2] - 1, end_pos[2], false, new_lines)
end

-- Create a keybinding in visual mode
vim.api.nvim_set_keymap('x', '<leader>cb', ':lua surround_with_backticks()<CR>', { noremap = true, silent = true })


-- Git remaps
vim.api.nvim_set_keymap('n', '<leader>gb', ':Git blame<CR>', { noremap = true, silent = true })
