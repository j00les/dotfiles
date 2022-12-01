set relativenumber
set tabstop=2
set shiftwidth=2
set guifont=FiraCode\ Nerd\ Font\ 11

set encoding=UTF-8
syntax enable 
syntax on

" coc setup
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

set signcolumn=yes

call plug#begin(stdpath('data') . '/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'sainnhe/sonokai'
Plug 'ryanoasis/vim-devicons'
Plug 'Mofiqul/vscode.nvim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'neovim/nvim-lspconfig'
Plug 'pangloss/vim-javascript'
call plug#end()

if has('termguicolors')
  set termguicolors
endif

let g:sonokai_style = 'maia'
let g:sonokai_better_performance = 1

colorscheme sonokai

"prettier setup
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

"enter to confirm intellisense
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"



"speedup ctrlp
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
"current directory ctrlp
let g:ctrlp_working_path_mode = 'c'


