vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)  
	use 'wbthomason/packer.nvim'
	use {'neoclide/coc.nvim', branch = 'release'}
	use 'sainnhe/sonokai'
	use 'sheerun/vim-polyglot'
	use 'sainnhe/everforest'
	use 'ryanoasis/vim-devicons'
	use 'Mofiqul/vscode.nvim'
	use {'junegunn/fzf',  run = function() vim.fn['fzf#install'](0) end }
	use 'junegunn/fzf.vim' 
	use 'junegunn/fzf.vim' 
	use 'Mofiqul/dracula.nvim'
	use 'scrooloose/nerdtree'
	use 'mattn/emmet-vim'
	use({'nvim-treesitter/nvim-treesitter', run =':TSUpdate'})
	use 'tpope/vim-surround'
	use 'shaunsingh/nord.nvim'
	use 'martinsione/darkplus.nvim'
	use 'gregsexton/MatchTag'

end)

