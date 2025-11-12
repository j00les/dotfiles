vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)  
	use 'wbthomason/packer.nvim'

	-- Modern LSP Setup (replaced CoC)
	use 'neovim/nvim-lspconfig'  -- Native LSP
	use {
		'williamboman/mason.nvim',  -- LSP installer
		config = function()
			require('mason').setup()
		end
	}
	use 'williamboman/mason-lspconfig.nvim'  -- Bridge mason & lspconfig

	-- Autocompletion (VSCode-like)
	use 'hrsh7th/nvim-cmp'  -- Completion engine
	use 'hrsh7th/cmp-nvim-lsp'  -- LSP completion source
	use 'hrsh7th/cmp-buffer'  -- Buffer completion
	use 'hrsh7th/cmp-path'  -- Path completion
	use 'hrsh7th/cmp-cmdline'  -- Command line completion
	use 'saadparwaiz1/cmp_luasnip'  -- Snippet completion

	use 'sainnhe/sonokai'
	use 'Mofiqul/vscode.nvim'
	use {'junegunn/fzf',  run = './install --bin' }
	use 'mattn/emmet-vim'
	use({'nvim-treesitter/nvim-treesitter', run =':TSUpdate'})
	use 'tpope/vim-surround'
	use {
		'andymass/vim-matchup',
		config = function()
			vim.g.matchup_matchparen_offscreen = { method = "popup" }
		end
	}
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}
	use ({'turbio/bracey.vim', run ='npm install --prefix server'})
	use 'JoosepAlviste/nvim-ts-context-commentstring'
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
	use 'joaohkfaria/vim-jest-snippets'
	use {
		'L3MON4D3/LuaSnip',
		tag = 'v2.*',
		run = 'make install_jsregexp'
	}
	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}
	use "lukas-reineke/indent-blankline.nvim"
	use {
		"f-person/git-blame.nvim",
		commit = "08ff65a",  -- Pin to stable commit
	}
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

	-- More VSCode-like features
	use {
		'nvim-lualine/lualine.nvim',  -- Status line
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use {
		'akinsho/bufferline.nvim',  -- Tab/buffer line
		tag = '*',
		requires = 'nvim-tree/nvim-web-devicons'
	}
	use {
		'rcarriga/nvim-notify',  -- Better notifications
		config = function()
			vim.notify = require('notify')
		end
	}
	use {
		'simrat39/symbols-outline.nvim',  -- Code outline sidebar
		config = function()
			require('symbols-outline').setup()
		end
	}
	use {
		'NvChad/nvim-colorizer.lua',  -- Color highlighter
		config = function()
			require('colorizer').setup()
		end
	}
	use {
		'folke/todo-comments.nvim',  -- Highlight TODO comments
		requires = 'nvim-lua/plenary.nvim',
		config = function()
			require('todo-comments').setup()
		end
	}
	use {
		'nvim-pack/nvim-spectre',  -- Search/replace panel
		requires = 'nvim-lua/plenary.nvim'
	}
end)
