--act as global variable
vim.g.mapleader = ' ' 
keyset = vim.keymap.set
opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}

-- create windows using H, J, K, L (linux)
--keyset("n", "<A-H>", "<C-w>v")
--keyset("n", "<A-J>", "<C-w>s<C-w>k")
--keyset("n", "<A-K>", "<C-w>s")
--keyset("n", "<A-L>", "<C-w>v<C-w>h")

-- create windows using H, J, K, L (mac 2015)
keyset("n", "˙", "<C-w>v")
keyset("n", "∆", "<C-w>s<C-w>k")
keyset("n", "˚", "<C-w>s")
keyset("n", "¬", "<C-w>v<C-w>h")

--autocomplete bracket
keyset("i", "{", "{}<ESC>ha")
keyset("i", "[", "[]<ESC>ha")
keyset("i", "(", "()<ESC>ha")
keyset("i", "'", "''<ESC>i")

-- move cursor between windows in normal
keyset("n", "<A-h>", "<C-w>h")
keyset("n", "<A-j>", "<C-w>j")
keyset("n", "<A-k>", "<C-w>k")
keyset("n", "<A-l>", "<C-w>l")

--ctrl-c to copy to clipboard 
-- on windows system; dependency = vcredist 
-- https://github.com/neovim/neovim/wiki/FAQ#how-to-use-the-windows-clipboard-from-wsl
keyset("v","<C-c>",'"+y')

--on unix system; dependency = (sudo apt install xclip)
--keyset({"v"},"<C-c>",":'<,'>w !xclip -selection clipboard<Cr><Cr>", {silent = true})

--keep cursor at the middle of the screen when scrolling
keyset("n", "<C-d>", "<C-d>zz")
keyset("n", "<C-u>", "<C-u>zz")

--ctrl-s save
keyset({"n", "i"},"<C-s>",":wa<CR>", {silent = true})

-- decrease width
keyset("n", "<C-H>", "<C-W><")

-- increase width
keyset("n", "<C-L>", "<C-W>>")

-- decrease height
keyset("n", "<C-K>", "<C-W>-")

-- increase height
keyset("n", "<C-J>", "<C-W>+" )

--escape terminal mode
keyset("t", "<Leader><Esc>", "<C-\\><C-n>")

--comment
keyset({"v", "n"}, "<C-/>", ":Commentary<CR>")

--source mapping
keyset("n", "<Leader>s", ":source %<CR>")

--buffer navigation
keyset("n", "<Leader>n", ":bn<CR>")
keyset("n", "<Leader>p", ":bp<CR>")




