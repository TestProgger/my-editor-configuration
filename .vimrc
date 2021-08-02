filetype on
filetype plugin on
filetype indent on
syntax on

set number
set noruler

set encoding=utf-8
set termencoding=utf-8

set incsearch
set hlsearch

set autoindent
set smartindent
set cindent

set tabstop=4
set softtabstop=4
set expandtab
set paste

call plug#begin('~/.vim/plugged')

"Theme
Plug 'romainl/flattened'

" Vid stroki sostojania
Plug 'itchyny/lightline.vim'

Plug 'scrooloose/nerdtree'

Plug 'vim-syntastic/syntastic'

call plug#end()


" Syntastic Configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



set laststatus=2
set noshowmode

set mouse=a

"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
map <C-q> :SyntasticCheck<CR>

