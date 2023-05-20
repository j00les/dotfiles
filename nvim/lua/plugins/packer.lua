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
	use 'mattn/emmet-vim'
	use({'nvim-treesitter/nvim-treesitter', run =':TSUpdate'})
	use 'tpope/vim-surround'
	use 'gregsexton/MatchTag'
	use 'tpope/vim-commentary'
	use ({'turbio/bracey.vim', run ='npm install --prefix server'})
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
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'voldikss/vim-floaterm'
	use 'joaohkfaria/vim-jest-snippets'
	use 'SirVer/ultisnips'
	use 'mileszs/ack.vim'
	use 'moll/vim-node'
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()		
	require("toggleterm").setup() end}
	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}
	use "lukas-reineke/indent-blankline.nvim"
	use "f-person/git-blame.nvim"
	use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
end)
