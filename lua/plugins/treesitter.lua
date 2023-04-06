require'nvim-treesitter.configs'.setup {
  ensure_installed = {"javascript", "typescript", "html", "json", "lua", "tsx", "vim", "graphql", "go"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
    auto_install = true
  },

  context_commentstring = {
    enable = true
  }

}


