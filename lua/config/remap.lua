local keyset = vim.keymap.set
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}

--enter to confirm coc-intellisense
keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

--FZF trigger
keyset("n", "<C-b>", ":NERDTreeToggle<CR>")

--file tree trigger
keyset("n", "<C-p>", ":FZF<CR>", {silent = true})

--autocomplete bracket
keyset("i", "{", "{}<ESC>ha")
keyset("i", "[", "[]<ESC>ha")
keyset("i", "(", "()<ESC>ha")
keyset("i", "'", "''<ESC>i")

--keep cursor at the middle of the screen when scrolling
keyset("n", "<C-d>", "<C-d>zz")
keyset("n", "<C-u>", "<C-u>zz")


