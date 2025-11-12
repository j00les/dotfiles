-- Search and replace panel (like VSCode's search/replace)
require('spectre').setup({
  color_devicons = true,
  open_cmd = 'vnew',
  live_update = false,
  line_sep_start = '┌-----------------------------------------',
  result_padding = '¦  ',
  line_sep       = '└-----------------------------------------',
  highlight = {
    ui = "String",
    search = "DiffChange",
    replace = "DiffDelete"
  },
  mapping = {
    ['toggle_line'] = {
      map = "dd",
      cmd = "<cmd>lua require('spectre').toggle_line()<CR>",
      desc = "toggle current item"
    },
    ['enter_file'] = {
      map = "<cr>",
      cmd = "<cmd>lua require('spectre').open_file_search()<CR>",
      desc = "goto current file"
    },
    ['send_to_qf'] = {
      map = "<leader>q",
      cmd = "<cmd>lua require('spectre').send_to_qf()<CR>",
      desc = "send all item to quickfix"
    },
    ['replace_cmd'] = {
      map = "<leader>c",
      cmd = "<cmd>lua require('spectre').replace_cmd()<CR>",
      desc = "input replace vim command"
    },
    ['show_option_menu'] = {
      map = "<leader>o",
      cmd = "<cmd>lua require('spectre').show_options()<CR>",
      desc = "show option"
    },
    ['run_current_replace'] = {
      map = "<leader>rc",
      cmd = "<cmd>lua require('spectre').run_current_replace()<CR>",
      desc = "replace current line"
    },
    ['run_replace'] = {
      map = "<leader>R",
      cmd = "<cmd>lua require('spectre').run_replace()<CR>",
      desc = "replace all"
    },
    ['change_view_mode'] = {
      map = "<leader>v",
      cmd = "<cmd>lua require('spectre').change_view()<CR>",
      desc = "change result view mode"
    },
    ['toggle_live_update'] = {
      map = "tu",
      cmd = "<cmd>lua require('spectre').toggle_live_update()<CR>",
      desc = "update change when vim write file."
    },
    ['resume_last_search'] = {
      map = "<leader>l",
      cmd = "<cmd>lua require('spectre').resume_last_search()<CR>",
      desc = "resume last search before close"
    },
  },
})

-- Keybinding to open spectre (Ctrl+Shift+F like VSCode)
vim.keymap.set('n', '<C-S-f>', '<cmd>lua require("spectre").toggle()<CR>', {
  desc = "Toggle Spectre"
})
vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
  desc = "Search current word"
})
vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
  desc = "Search current word"
})
vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
  desc = "Search on current file"
})
