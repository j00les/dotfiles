local keyset = vim.keymap.set
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}

--enter to confirm coc-intellisense
keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

--file tree trigger
keyset("n", "<C-b>", ":NERDTreeToggle<CR>")

--FZF trigger(ctrlp)
keyset("n", "<C-p>", ":All<CR>", {silent = true})

--autocomplete bracket
keyset("i", "{", "{}<ESC>ha")
keyset("i", "[", "[]<ESC>ha")
keyset("i", "(", "()<ESC>ha")
keyset("i", "'", "''<ESC>i")

--keep cursor at the middle of the screen when scrolling
keyset("n", "<C-d>", "<C-d>zz")
keyset("n", "<C-u>", "<C-u>zz")

--ctrl-s save
keyset({"n", "i"},"<C-s>",":wa<CR>", {silent = true})

--ctrl-c to copy to clipboard dependency = (sudo apt install xclip)
keyset({"v"},"<C-c>",":'<,'>w !xclip -selection clipboard<Cr><Cr>", {silent = true})









