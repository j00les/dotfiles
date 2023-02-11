vim.cmd.packadd('packer.nvim')
return require('packer').startup(function(use)  
	use 'wbthomason/packer.nvim'
	use {'neoclide/coc.nvim', branch = 'release'}
	use 'sainnhe/sonokai'
	use 'sheerun/vim-polyglot'
	use 'ryanoasis/vim-devicons'
	use 'Mofiqul/vscode.nvim'
	use {'junegunn/fzf',  run = function() vim.fn['fzf#install'](0) end} 
	use 'junegunn/fzf.vim' 
	use 'scrooloose/nerdtree' 
	use 'mattn/emmet-vim'
	use({'nvim-treesitter/nvim-treesitter', run =':TSUpdate'})
	use 'tpope/vim-surround'
	use 'gregsexton/MatchTag'
	use 'tpope/vim-commentary'
	use ({'turbio/bracey.vim', run ='npm install --prefix server'})
	use "lukas-reineke/indent-blankline.nvim"
	use 'JoosepAlviste/nvim-ts-context-commentstring' 
	use 'vim-test/vim-test'
	use {
	  "nvim-neotest/neotest",
	  requires = {
	    "nvim-lua/plenary.nvim",
	    "nvim-treesitter/nvim-treesitter",
	    "antoinemadec/FixCursorHold.nvim",
			"haydenmeade/neotest-jest",
	  }
	}
	end)


