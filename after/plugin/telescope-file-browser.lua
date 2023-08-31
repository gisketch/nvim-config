-- You don't need to set any of these options.
-- IMPORTANT!: this is only a showcase of how you can set default options!
require("telescope").setup {
    extensions = {
        file_browser = {
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
        },
    },
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"



local fb_actions = require "telescope".extensions.file_browser.actions
-- mappings in file_browser extension of telescope.setup
mappings = {
    ["i"] = {
        ["<D-r>"] = fb_actions.rename,
        ["<D-a>"] = fb_actions.create
    },
}
