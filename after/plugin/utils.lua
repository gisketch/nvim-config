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
        -- vim.cmd("<Plug>RestNvim")
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Plug>RestNvim', true, true, true), 'm', false)
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

function OpenTerminal()
    vim.cmd('FloatermNew --autoclose=2')
end

function ListTodo()
    vim.cmd('TodoTelescope')
end

function NewFunction()
    vim.cmd('noice other')
end

function DeleteSession()
    vim.cmd('Autosession delete')
end

function GitConflictChooseOurs()
    vim.cmd('GitConflictChooseOurs')
end

function GitConflictChooseTheirs()
    vim.cmd('GitConflictChooseTheirs')
end

function GitConflictChooseBoth()
    vim.cmd('GitConflictChooseBoth')
end

function GitConflictChooseNone()
    vim.cmd('GitConflictChooseNone')
end

function GitConflictNextConflict()
    vim.cmd('GitConflictNextConflict')
end

function GitConflictPrevConflict()
    vim.cmd('GitConflictPrevConflict')
end

function GitConflictListQf()
    vim.cmd('GitConflictListQf')
end

function OpenTodo()
    vim.cmd([[edit ~/notes/todo.md]])
end

function VimRest()
    vim.cmd([[call VrcQuery()]])
end

function CopilotChatCommit()
    vim.cmd([[CopilotChatCommitStaged]])
end

local global_note = require("global-note")
global_note.setup()

function ToggleGlobalNote()
    global_note.toggle_note()
end

FunctionMappings = {
    ["ESLint Fix"] = EslintFixUtil,
    ["Save Session"] = SaveSessionUtil,
    -- ["Run HTTP Request"] = RunHttpUtil,
    ["Get JSON Path"] = GetJsonPathUtil,
    ["Make It Rain"] = MakeItRainUtil,
    ["Open commit in Browser"] = GitOpenUrlUtil,
    ["Toggle Git Blame"] = ToggleGitBlameUtil,
    ["Transparent Toggle"] = TransparentToggleUtil,
    ["History Log"] = LogHistoryUtil,
    ["Diff View History"] = DiffViewHistory,
    ["Open Terminal"] = OpenTerminal,
    ["List Todo in Project"] = ListTodo,
    ["New Function"] = NewFunction,
    ["Delete Session"] = DeleteSession,
    ["Git Conflict Choose Ours"] = GitConflictChooseOurs,
    ["Git Conflict Choose Theirs"] = GitConflictChooseTheirs,
    ["Git Conflict Choose Both"] = GitConflictChooseBoth,
    ["Git Conflict Choose None"] = GitConflictChooseNone,
    ["Git Conflict Next Conflict"] = GitConflictNextConflict,
    ["Git Conflict Prev Conflict"] = GitConflictPrevConflict,
    ["Git Conflict List"] = GitConflictListQf,
    ["Open Notes"] = OpenTodo,
    ["Query HTTP Request"] = VimRest,
    ["Toggle Global Note"] = ToggleGlobalNote,
    ["Generate Commit Message"] = CopilotChatCommit,
}

function SelectFunction()
    local choices = vim.tbl_keys(FunctionMappings)

    local on_select = function(choice)
        if choice then
            -- Use pcall to catch any errors when calling the function
            local success, errorMsg = pcall(FunctionMappings[choice])
            if not success then
                -- If there was an error, print the error message
                print("Error:", errorMsg)
            end
        end
    end

    vim.ui.select(choices, { prompt = "some utils i made :>" }, on_select)
end

vim.api.nvim_set_keymap('n', '<leader>u', ':lua SelectFunction()<CR>', { noremap = true, silent = true })
