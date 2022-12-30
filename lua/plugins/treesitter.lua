require'nvim-treesitter.configs'.setup {
	ensure_installed = {"javascript", "typescript", "html", "json", "lua", "tsx", "vim" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
    auto_install = true
  }
}
