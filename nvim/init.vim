set number

" Encoding
set encoding=utf-8
set termencoding=utf-8

" Indent
set autoindent
set smartindent
set cindent
set expandtab

" Search
set hlsearch
set incsearch
set smartcase
set ignorecase

" Folding
set foldenable
set foldmethod=syntax
set foldlevel=1
set foldcolumn=3
set foldopen=all
"-------- FOLD KEYS ---------"
inoremap <C-q> <C-O>za
nnoremap <C-q> za
onoremap <C-q> <C-C>za
vnoremap <C-q> zf


" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Word Conf
set wrap
set linebreak

" Mouse
set mouse=a
set mousehide

" Etc
set scrolloff=3
set noswapfile
set autoread
set nobackup

" Syntax
filetype plugin indent on
syntax on


" Tabs config
map <S-left> :tabprevious<cr>
nmap <S-left> :tabprevious<cr>
imap <S-left> <ESC>:tabprevious<cr>i
map <S-right> :tabnext<cr>
nmap <S-right> :tabnext<cr>
imap <S-right> <ESC>:tabnext<cr>i
nmap <C-t> :tabnew<cr>
imap <C-t> <ESC>:tabnew<cr>
nmap <S-down> :tabnew<cr>
imap <S-down> <ESC>:tabnew<cr>
nmap <C-x> :tabclose<cr>
imap <C-x> <ESC>:tabclose<cr>




call plug#begin()

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'windwp/nvim-ts-autotag'
Plug 'windwp/nvim-autopairs'


Plug 'marko-cerovac/material.nvim'
Plug 'rafamadriz/neon'

Plug 'hoob3rt/lualine.nvim'

call plug#end()

let g:loaded_python_provider = 0
let g:loaded_perl_provider = 0
let g:loaded_ruby_provider = 0

let g:python3_host_prog = '/usr/bin/python'

" Apearence
set noruler


" Tree Sitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"javascript" , "typescript" , "python" , "c" , "cpp" , "html" , "css" , "bash" , "comment" , "json" , "regex" , "tsx" } ,
  highlight = {
    enable = true,              
    additional_vim_regex_highlighting = false,
  },
  indent = {
	enable = true
  }
}

require'material'.set()


require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
    component_separators = {'', ''},
    section_separators = {'', ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
    filetypes = { "html","tsx","vue","svelte","php" }
  }
}

require('nvim-autopairs').setup{}

EOF

" NERD Tree
nnoremap <C-n> :NERDTreeToggle<CR>
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''


"set foldmethod=expr
"set foldexpr=nvim_treesitter#foldexpr()
