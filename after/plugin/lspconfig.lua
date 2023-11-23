-- Define a global variable for the state
vim.g.inlay_hint_toggle = true

-- Function to toggle inlay hints
vim.cmd([[
  function! ToggleInlayHint()
    if g:inlay_hint_toggle
      lua vim.lsp.inlay_hint(0, true)
    else
      lua vim.lsp.inlay_hint(0, false)
    endif
    let g:inlay_hint_toggle = !g:inlay_hint_toggle
  endfunction
]])

vim.api.nvim_set_keymap(
    "i",
    "<C-s>",
    '<cmd>call ToggleInlayHint()<CR>',
    { noremap = true, silent = true }
)
