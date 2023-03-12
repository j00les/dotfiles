local planets = "<CMD>lua require'telescope.builtin'.planets{}<CR>"
local search_file = "<CMD>lua require'telescope.builtin'.find_files{}<CR>"
local live_grep = "<CMD>lua require'telescope.builtin'.live_grep{}<CR>"
local grep_string = "<CMD>lua require'telescope.builtin'.grep_string{}<CR>"

keyset("n","<Leader>p", live_grep)
keyset("n","<C-p>", search_file)
keyset("n","<C-f>", grep_string)
