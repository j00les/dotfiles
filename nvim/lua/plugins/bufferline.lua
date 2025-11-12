-- VSCode-like buffer/tab line
require('bufferline').setup {
  options = {
    mode = "buffers",  -- Show buffers as tabs
    numbers = "none",
    close_command = "bdelete! %d",
    right_mouse_command = "bdelete! %d",
    left_mouse_command = "buffer %d",
    middle_mouse_command = nil,
    indicator = {
      icon = '▎',
      style = 'icon',
    },
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 15,
    truncate_names = true,
    tab_size = 18,
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "center",
        separator = true
      }
    },
    color_icons = true,
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = true,
    separator_style = "thin",
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    sort_by = 'insert_after_current'
  }
}

-- Keybindings for buffer navigation (VSCode-like)
vim.keymap.set('n', '<C-Tab>', ':BufferLineCycleNext<CR>', {silent = true, noremap = true})
vim.keymap.set('n', '<C-S-Tab>', ':BufferLineCyclePrev<CR>', {silent = true, noremap = true})
vim.keymap.set('n', '<Leader>bp', ':BufferLinePick<CR>', {silent = true, noremap = true})
vim.keymap.set('n', '<Leader>bc', ':BufferLinePickClose<CR>', {silent = true, noremap = true})
