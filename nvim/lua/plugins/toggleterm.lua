require('toggleterm').setup {
  size = function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.2
    elseif term.direction == "float" then
      return 9
    end
  end,
  open_mapping = [[<c-\>]],
  persist_mode = true,
}

--trigger lazygit
local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ 
    cmd = "lazygit",
    hidden = true, 
    direction = "float", 
    border = 'double'
  })

function _lazygit_toggle()
  lazygit:toggle()
end

keyset("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
keyset("n", "<Leader>h", "<Cmd>ToggleTerm  direction=horizontal<CR>")
keyset("n", "<Leader>v", "<Cmd>ToggleTerm  direction=vertical<CR>")
keyset("n", "<Leader>f", "<Cmd>ToggleTerm  direction=float<CR>")
