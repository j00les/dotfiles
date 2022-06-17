set termguicolors
set number
set tabstop=2
set shiftwidth=2
syntax enable 

syntax on
call plug#begin(stdpath('data') . '/plugged')
Plug 'dracula/vim'
Plug 'sheerun/vim-polyglot'
Plug 'sainnhe/sonokai'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
call plug#end()

if has('termguicolors')
  set termguicolors
endif

let g:sonokai_style = 'maia'
let g:sonokai_better_performance = 1

colorscheme sonokai
