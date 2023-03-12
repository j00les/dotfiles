require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
      width = 30,
      mappings = {
        list = {
          { key = "u", action = "dir_up" },
        },
      },
    },
    renderer = {
      group_empty = true,
      indent_width = 2,
      indent_markers = {
        enable = true,
        inline_arrows = true,
        icons = {
          -- corner = "└",
          -- edge = "│",
          item = "│",
          -- bottom = "─",
          -- none = " ",
        },
      },
    },

    filters = {
      dotfiles = false,
    },
    git = {
      enable = true,
      ignore = true,
      show_on_dirs = true,
      show_on_open_dirs = true,
      timeout = 400,
    },
    actions ={
      open_file = {
        quit_on_open = false,
        resize_window = true,
        window_picker = {
          enable = true,
          picker = "default",
          chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        }
      }
    }
  })

keyset("n", "<C-b>", ":NvimTreeToggle<CR>")
