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
	}

	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
	end}
  use 'nvim-tree/nvim-web-devicons'
	use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.8',
  	 requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
		'nvim-telescope/telescope-fzf-native.nvim',
		run = 'make'
	}
	use 'voldikss/vim-floaterm'
	use 'joaohkfaria/vim-jest-snippets'
	use 'SirVer/ultisnips'
	use 'mileszs/ack.vim'
	use 'moll/vim-node'
	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}
	use "lukas-reineke/indent-blankline.nvim"
	use "f-person/git-blame.nvim"
  use {
  	"rockyzhang24/arctic.nvim",
  	requires = { "rktjmp/lush.nvim" }
	}

	-- VSCode-like enhancements
	use 'mg979/vim-visual-multi'  -- Multi-cursor
	use 'tpope/vim-fugitive'      -- Git commands
	use {
		'sindrets/diffview.nvim',
		requires = 'nvim-lua/plenary.nvim'
	}
	use 'karb94/neoscroll.nvim'   -- Smooth scrolling
	use {
		'folke/trouble.nvim',
		requires = 'nvim-tree/nvim-web-devicons'
	}
	use {
		'windwp/nvim-autopairs',
		config = function()
			require('nvim-autopairs').setup()
		end
	}
	use {
		'folke/which-key.nvim',
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require('which-key').setup()
		end
	}
end)
