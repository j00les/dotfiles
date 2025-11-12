--act as global variable
vim.g.mapleader = ' ' 
keyset = vim.keymap.set
opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}

-------------------------------------------------------------------
--AUTOCOMPLETE
-- Removed manual auto-pairs mappings - now handled by nvim-autopairs plugin

-------------------------------------------------------------------
--WINDOWS**
-- create windows using H, J, K, L (mac)
keyset("n", "˙", "<C-w>v")
keyset("n", "∆", "<C-w>s<C-w>k")
keyset("n", "˚", "<C-w>s")
keyset("n", "¬", "<C-w>v<C-w>h")

--window sizing (changed C-J to avoid conflict with terminal toggle)
keyset("n", "<C-H>", "<C-W><")  -- decrease width
keyset("n", "<C-L>", "<C-W>>")  -- increase width
keyset("n", "<C-K>", "<C-W>-")  -- decrease height
keyset("n", "<Leader>wj", "<C-W>+" ) -- increase height (changed from C-J)

-------------------------------------------------------------------
--BUFFER**
keyset("n", "<Leader>bn", ":bn<CR>")
keyset("n", "<Leader>bp", ":bp<CR>")

-------------------------------------------------------------------
--YANK**
--ctrl-c to copy to clipboard 
-- on windows system; dependency = vcredist 
-- https://github.com/neovim/neovim/wiki/FAQ#how-to-use-the-windows-clipboard-from-wsl

keyset({"v", "n"},"<C-c>",'"+y')
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

-------------------------------------------------------------------
--VSCODE-LIKE KEYBINDINGS**
-- These mappings work in GUI Neovim (neovim-qt, VimR, etc.)
-- For terminal Neovim, use the Ctrl alternatives below

-- cmd+j: Toggle terminal (horizontal)
keyset("n", "<D-j>", "<Cmd>ToggleTerm direction=horizontal<CR>", {silent = true})
keyset("t", "<D-j>", "<Cmd>ToggleTerm<CR>", {silent = true})

-- cmd+shift+e: Toggle file tree
keyset("n", "<D-S-e>", ":NvimTreeToggle<CR>", {silent = true})

-- cmd+shift+f: Search in whole project (live grep)
keyset("n", "<D-S-f>", "<cmd>lua require('telescope.builtin').live_grep()<CR>", {silent = true})

-- cmd+f: Find in current file (use native search)
keyset("n", "<D-f>", "/", {noremap = true})

-- Terminal alternatives (use Ctrl instead of Cmd for terminal emulators)
-- ctrl+j: Toggle terminal (horizontal)
keyset("n", "<C-j>", "<Cmd>ToggleTerm direction=horizontal<CR>", {silent = true})
keyset("t", "<C-j>", "<Cmd>ToggleTerm<CR>", {silent = true})

-- ctrl+shift+e: Toggle file tree (in terminal, use ctrl+e)
keyset("n", "<C-e>", ":NvimTreeToggle<CR>", {silent = true})

-- ctrl+shift+f: Search in whole project (in terminal, use ctrl+shift+f or leader+shift+f)
keyset("n", "<C-S-f>", "<cmd>lua require('telescope.builtin').live_grep()<CR>", {silent = true})
keyset("n", "<Leader>F", "<cmd>lua require('telescope.builtin').live_grep()<CR>", {silent = true})

-- GitLens-like features (gitsigns + git-blame)
keyset("n", "<Leader>gb", ":GitBlameToggle<CR>", {silent = true}) -- toggle git blame
keyset("n", "<Leader>gp", "<cmd>lua require('gitsigns').preview_hunk()<CR>", {silent = true}) -- preview hunk
keyset("n", "<Leader>gn", "<cmd>lua require('gitsigns').next_hunk()<CR>", {silent = true}) -- next hunk
keyset("n", "<Leader>gP", "<cmd>lua require('gitsigns').prev_hunk()<CR>", {silent = true}) -- previous hunk

-- Vim-fugitive (Git commands)
keyset("n", "<Leader>gs", ":Git<CR>", {silent = true}) -- git status
keyset("n", "<Leader>gc", ":Git commit<CR>", {silent = true}) -- git commit
keyset("n", "<Leader>gps", ":Git push<CR>", {silent = true}) -- git push
keyset("n", "<Leader>gpl", ":Git pull<CR>", {silent = true}) -- git pull
keyset("n", "<Leader>gd", ":Gdiffsplit<CR>", {silent = true}) -- git diff
keyset("n", "<Leader>gv", ":DiffviewOpen<CR>", {silent = true}) -- open diffview
keyset("n", "<Leader>gvc", ":DiffviewClose<CR>", {silent = true}) -- close diffview

