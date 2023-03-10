require('toggleterm').setup {
  size = function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.2
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

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})


