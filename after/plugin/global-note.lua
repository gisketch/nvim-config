require("global-note").setup({
    filename = "global.md",
    directory = "~/notes/",
    additional_presets = {
        projects = {
            filename = "todo.md",
            title = "To Do",
            command_name = "TodoNote",
        },
    }
})
