set number

set incsearch
set hlsearch
set smartcase
set ignorecase

set nocompatible
set scrolloff=3

set wrap 
set linebreak

set mouse=a
set mousehide

set autoread
set noswapfile
set nobackup

set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set cindent
set expandtab
set smartindent

set encoding=utf-8
set termencoding=utf-8

" Experiments
set wildmenu

syntax on
filetype plugin indent on
call plug#begin()

Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'Xuyuanp/scrollbar.nvim'

Plug 'marko-cerovac/material.nvim'

call plug#end()

set background=dark
colorscheme material

nnoremap <C-n> :NERDTreeToggle<CR>

nnoremap <C-t> :tabnew<CR>
nnoremap <C-q> :tabclose<CR>

let g:coc_global_extensions=[ 'coc-json'  , 'coc-flutter' , 'coc-svg' , 'coc-sql' ,  'coc-emmet' ,  'coc-tsserver' , 'coc-pyright' , 'coc-html' , 'coc-css' , 'coc-go' , 'coc-sh' , 'coc-clangd' ]

let g:loaded_python_provider=0
let g:loaded_ruby_provider=0
let g:loaded_perl_provider=0

augroup ScrollbarInit
  autocmd!
  autocmd WinScrolled,VimResized,QuitPre * silent! lua require('scrollbar').show()
  autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
  autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
augroup end
