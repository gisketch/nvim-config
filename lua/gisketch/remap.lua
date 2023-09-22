vim.g.mapleader = " "

-- vim.keymap.set("n", "<leader>e", ':Telescope projects<CR>',{ noremap = true, silent = true })

-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap(
    "n",
    "<leader>pv",
    ":Oil --float<CR>",
    { noremap = true }
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

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)


vim.api.nvim_set_keymap('i', '<C-H>', '<C-Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-L>', '<C-Right>', { noremap = true, silent = true })


vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")
vim.keymap.set("n", "<leader>gcu", "<cmd>GitBlameCopyCommitURL<CR>")
vim.keymap.set("n", "<leader>bt", "<cmd>GitBlameToggle<CR>")

vim.keymap.set("n", "<leader>mtt", "<cmd>TransparentToggle<CR>")
vim.keymap.set("n", "<leader>mlh", "<cmd>Noice telescope<CR>")
