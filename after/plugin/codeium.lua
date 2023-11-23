function getStatusString()
    local result = vim.fn["codeium#GetStatusString"]()

    if string.find(result, "*") then
        -- Replace "*" with "X"
        result = string.gsub(result, "*", "")
    end

    if vim.fn.mode() ~= "i" then
        return ""
    else
        return result
    end
end

-- Codeium disable Tab because of conflict
vim.cmd[[inoremap <script><silent><nowait><expr> <C-a> codeium#Accept()]]
vim.g.codeium_no_map_tab = 1




