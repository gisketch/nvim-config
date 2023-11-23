vim.api.nvim_set_keymap("n",
    "<leader>mjp",
    [[ :lua local jp = require("jsonpath").get(); jp = '"' .. jp:sub(2) .. '"'; vim.fn.setreg("+", jp) <CR> ]],
    { noremap = true, silent = true }
)
-- TODO: modify to be put in a string <3 thx future me
