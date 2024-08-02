require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
      width = 30,
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
      ignore = false,
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

local function open_nvim_tree(data)

  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
    return
  end

  -- create a new, empty buffer
  vim.cmd.enew()

  -- wipe the directory buffer
  vim.cmd.bw(data.buf)

  -- change to the directory
  vim.cmd.cd(data.file)

  -- open the tree
  require("nvim-tree.api").tree.open()
end
 
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree})



