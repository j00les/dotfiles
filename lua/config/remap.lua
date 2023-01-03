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

--ctrl-c to copy to clipboard 
-- on windows system dependency = vcredist 
-- https://github.com/neovim/neovim/wiki/FAQ#how-to-use-the-windows-clipboard-from-wsl
keyset("v","<C-c>",'"+y')

-- on unix system dependency = (sudo apt install xclip)
--keyset({"v"},"<C-c>",":'<,'>w !xclip -selection clipboard<Cr><Cr>", {silent = true})

-- decrease width
keyset("n", "<C-H>", "<C-W><")

-- increase width
keyset("n", "<C-L>", "<C-W>>")

-- decrease height
keyset("n", "<C-K>", "<C-W>-")

-- increase height
keyset("n", "<C-J>", "<C-W>+" )

-- move window in normal
keyset("n", "<A-h>", "<C-w>h")
keyset("n", "<A-j>", "<C-w>j")
keyset("n", "<A-k>", "<C-w>k")
keyset("n", "<A-l>", "<C-w>l")

-- create windows using H, J, K, L
keyset("n", "<A-H>", "<C-w>v")
keyset("n", "<A-J>", "<C-w>s<C-w>k")
keyset("n", "<A-K>", "<C-w>s")
keyset("n", "<A-L>", "<C-w>v<C-w>h")

