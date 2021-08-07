filetype on
filetype plugin on
filetype indent on

syntax on
colorscheme sublimemonokai

set noswapfile

set autoread

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

set wrap linebreak

call plug#begin('~/.vim/plugged')

" Vid stroki sostojania
Plug 'itchyny/lightline.vim'

Plug 'scrooloose/nerdtree'

Plug 'vim-syntastic/syntastic'

Plug 'mattn/emmet-vim'


Plug 'neoclide/coc.nvim', {'branch': 'release'}


call plug#end()

" Syntastic Configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-y>'


set laststatus=2
set noshowmode

set mouse=a

"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
map <C-q> :SyntasticCheck<CR>
