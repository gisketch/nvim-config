require 'telescope'.setup {
    extensions = {
        sessions_picker = {
            sessions_dir = '/Users/Home/.vim/sessions/',
        }
    },
}
require('telescope').load_extension('sessions_picker')
