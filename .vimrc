call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'powerline/powerline'

" colorschemes
Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()

syntax on

set showcmd        " Show (partial) command in status line.
set showmatch      " Show matching brackets.

set hlsearch       " highlight search
set ignorecase     " Do case insensitive matching
set smartcase      " Do smart case matching
set incsearch      " Incremental search

set hidden         " Hide buffers when they are abandoned
set mouse=a        " Enable mouse usage (all modes)
set mousehide      " hide mouse after chars typed

" открывать новые окна справа
set splitright

set laststatus=2        " always show status line.
set fillchars+=stl:\ ,stlnc:\
let g:Powerline_symbols = 'PowerlineSymbols'
set t_Co=256

"let g:airline#extensions#tabline#enabled = 1

colorscheme gruvbox
set background=dark

noremap <Left> <NOP>
noremap <Down> <NOP>
noremap <Up> <NOP>
noremap <Right> <NOP>

set scrolloff=8

set nu

set iminsert=0
set hlsearch "подсвечивает искомое выражения
set wrap
set linebreak
set hidden
set matchpairs+=<:> " показывать совпадающие скобки для HTML-тегов


set shiftwidth=2 " размер отступов (нажатие на << или >>)
set tabstop=2 " ширина табуляции
set softtabstop=2 " ширина 'мягкого' таба
set autoindent " ai - включить автоотступы (копируется отступ предыдущей строки)
set cindent " ci - отступы в стиле С
set expandtab " преобразовать табуляцию в пробелы
set smartindent " Умные отступы (например, автоотступ после {)
set autoread

"mappings

map <C-n> :NERDTreeToggle<CR>
