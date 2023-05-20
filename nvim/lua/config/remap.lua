--act as global variable
vim.g.mapleader = ' ' 
keyset = vim.keymap.set
opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}

-------------------------------------------------------------------
--AUTOCOMPLETE
keyset("i", "{", "{}<ESC>ha")
keyset("i", "[", "[]<ESC>ha")
keyset("i", "(", "()<ESC>ha")
keyset("i", "'", "''<ESC>i")

-------------------------------------------------------------------
--WINDOWS**
-- create windows using H, J, K, L (mac)
keyset("n", "˙", "<C-w>v")
keyset("n", "∆", "<C-w>s<C-w>k")
keyset("n", "˚", "<C-w>s")
keyset("n", "¬", "<C-w>v<C-w>h")
--window sizing
keyset("n", "<C-H>", "<C-W><")  -- decrease width
keyset("n", "<C-L>", "<C-W>>")  -- increase width
keyset("n", "<C-K>", "<C-W>-")  -- decrease height
keyset("n", "<C-J>", "<C-W>+" ) -- increase height

-------------------------------------------------------------------
--BUFFER**
keyset("n", "<Leader>n", ":bn<CR>")
keyset("n", "<Leader>p", ":bp<CR>")

-------------------------------------------------------------------
--YANK**
--ctrl-c to copy to clipboard 
-- on windows system; dependency = vcredist 
-- https://github.com/neovim/neovim/wiki/FAQ#how-to-use-the-windows-clipboard-from-wsl
keyset("v","<C-c>",'"+y')
--on unix system; dependency = (sudo apt install xclip)
--keyset({"v"},"<C-c>",":'<,'>w !xclip -selection clipboard<Cr><Cr>", {silent = true})

-------------------------------------------------------------------
--OTHERS**
keyset("t", "<Leader><Esc>", "<C-\\><C-n>") --escape terminal mode
keyset({"v", "n"}, "<C-/>", ":Commentary<CR>") --comment
keyset("n", "<Leader>s", ":source %<CR>") --source mapping
--keep cursor at the middle of the screen when scrolling
keyset("n", "<C-d>", "<C-d>zz")
keyset("n", "<C-u>", "<C-u>zz")
--ctrl-s save
keyset({"n", "i"},"<C-s>",":wa<CR>", {silent = true})
keyset("n", "<Leader>m", ":MarkdownPreview<CR>")




