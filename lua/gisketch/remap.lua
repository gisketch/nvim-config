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

vim.keymap.set("n", "<leader>h", "^")
vim.keymap.set("n", "<leader>l", "$")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>o", "o<Esc>^")
vim.keymap.set("n", "<leader>O", "O<Esc>^")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])



-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")
vim.keymap.set("n", "<leader>gcu", "<cmd>GitBlameCopyCommitURL<CR>")
vim.keymap.set("n", "<leader>gco", "<cmd>GitBlameOpenCommitURL<CR>")

vim.keymap.set("n", "<leader>bt", "<cmd>GitBlameToggle<CR>")
vim.keymap.set("n", "<leader>mnp", "<cmd>NoNeckPain<CR>")

vim.keymap.set("n", "<leader>mtt", "<cmd>TransparentToggle<CR>")
vim.keymap.set("n", "<leader>mlh", "<cmd>Noice telescope<CR>")

vim.api.nvim_set_keymap('', '<D-v>', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<D-v>', '"+p', { noremap = true, silent = true })
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

-- make a remap to run mksession ~/.vim/sessions/ and ask user for name input and append it to the directory
vim.api.nvim_set_keymap('n', '<leader>rnv', '<Plug>RestNvim', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>rnp', '<Plug>RestNvimPreview', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>rnl', '<Plug>RestNvimLast', { noremap = true })
