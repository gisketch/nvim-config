-------------------------
--                      -
--   MY UTILITIES       -
--                      -
-------------------------

function EslintFixUtil()
    local file_ext = vim.fn.expand("%:e")

    if file_ext == "js" or file_ext == "jsx" or file_ext == "ts" or file_ext == "tsx" then
        print("Fixing...")
        vim.cmd('!npx eslint --fix %')
        vim.cmd('e!')
        print("TADA!")
    else
        print("File invalid")
    end
end

function SaveSessionUtil()
    vim.cmd('lua save_session()')
end

function RunHttpUtil()
    local file_ext = vim.fn.expand("%:e")

    if file_ext == "http" then
        vim.cmd('<Plug>RestNvim')
    else
        print("File invalid")
    end
end

function GetJsonPathUtil()
    local jsonpath = require("jsonpath").get()
    jsonpath = '"' .. jsonpath:sub(2) .. '"'
    vim.fn.setreg("+", jsonpath)
    print("Copied to clipboard: " .. jsonpath)
end

function MakeItRainUtil()
    vim.cmd('CellularAutomaton make_it_rain')
end

function GitOpenUrlUtil()
    vim.cmd('GitBlameOpenCommitURL')
end

function ToggleGitBlameUtil()
    vim.cmd('GitBlameToggle')
end

function TransparentToggleUtil()
    vim.cmd('TransparentToggle')
end

function LogHistoryUtil()
    vim.cmd('Noice telescope')
end

function DiffViewHistory()
    vim.cmd('DiffviewFileHistory %')
end

FunctionMappings = {
    ["ESLint Fix"] = EslintFixUtil,
    ["Save Session"] = SaveSessionUtil,
    ["Run HTTP Request"] = RunHttpUtil,
    ["Get JSON Path"] = GetJsonPathUtil,
    ["Make It Rain"] = MakeItRainUtil,
    ["Open commit in browser"] = GitOpenUrlUtil,
    ["Toggle Git Blame"] = ToggleGitBlameUtil,
    ["Transparent Toggle"] = TransparentToggleUtil,
    ["Log History"] = LogHistoryUtil,
    ["Diff View History"] = DiffViewHistory,
}

function SelectFunction()
    local choices = vim.tbl_keys(FunctionMappings)

    local on_select = function(choice)
        if choice then
            FunctionMappings[choice]()
        end
    end

    vim.ui.select(choices, { prompt = "some utils i made :>" }, on_select)
end

vim.api.nvim_set_keymap('n', '<leader>u', ':lua SelectFunction()<CR>', { noremap = true, silent = true })
