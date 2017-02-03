" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

set nocompatible

"execute pathogen#infect()

syntax on

filetype off     " required!

let $PATH = $PATH . ':' . expand("~/.local/bin")

  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
  Plugin 'VundleVim/Vundle.git'

  " Plugins
  " NOTE: comments after Plugin command are not allowed...
  "
  " Libs
  " For FuzzyFinder:
  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-repeat'
  " Plugin 'L9'
  " Git plugin not hosted on GitHub
  Plugin 'git://git.wincent.com/command-t.git'
  " git repos on your local machine (i.e. when working on your own plugin)
  " Plugin 'file:///home/gmarik/path/to/plugin'
  " The sparkup vim script is in a subdirectory of this repo called vim.
  " Pass the path to set the runtimepath properly.
  Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
  " Install L9 and avoid a Naming conflict if you've already
  " installed a
  " different version somewhere else.
  Plugin 'ascenator/L9', {'name': 'newL9'}
  " Interface
  " Plugin 'ctrlvim/ctrlp.vim'
  Plugin 'scrooloose/nerdtree'
  " Perform all your vim insert mode completions with Tab
  Plugin 'ervandew/supertab'
  Plugin 'mattn/emmet-vim'
  " Command-T
"HTML/HAML
  "HTML5 omnicomplite and syntax
  Plugin 'othree/html5.vim'
  Plugin 'hokaccha/vim-html5validator'
  "Plugin 'git://github.com/tyru/operator-html-escapr.vim.git'
  "Runtime files for HAML and Sass
  Plugin 'tpope/vim-haml'
  "Plugin 'gregsexton/MatchTag'
"CSS/Less
  "CSS3 syntax support
  Plugin 'hail2u/vim-css3-syntax'
  "Highlight colors in css files
  Plugin 'ap/vim-css-color'
  Plugin 'groenewege/vim-less'
  Plugin 'miripiruni/vim-better-css-indent'
  Plugin 'miripiruni/CSScomb-for-Vim'
"Javascript
  "Vastly improved vim's javascript indentation
  "Plugin 'pangloss/vim-javascript.git'
  "Syntax for jQuery keywords and css selectors
  Plugin 'itspriddle/vim-jquery'
  "CoffeeScript support
  "Plugin 'kchmck/vim-coffee-script.git'
  "Plugin 'walm/jshint.vim.git'
  " JSON
  "Plugin 'git://github.com/leshill/vim-json.git'
  " PHP
  "Plugin 'git://github.com/vim-scripts/php.vim--Garvin.git'
  "Plugin 'git://github.com/2072/PHP-Indenting-for-VIm.git'
  " Python/Django
  "Plugin 'git://github.com/fs111/pydoc.vim.git'
  " Perl
  "Plugin 'git://github.com/petdance/vim-perl.git'
  " Ruby/Rails
  " Editing and compiling Ruby
  " Plugin 'git://github.com/vim-ruby/vim-ruby.git'
  " Rails support
  " Plugin 'git://github.com/tpope/vim-rails.git'
  " Wisely add \"end\" in ruby, endfunction/endif/more
  " Plugin 'git://github.com/tpope/vim-endwise.git'
  " Jade
  "Plugin 'git://github.com/digitaltoad/vim-jade.git'
  " Stylus
  "Plugin 'git://github.com/wavded/vim-stylus.git'
  "Colorscheme
  Plugin 'freeo/vim-kalisi'
  Plugin 'freeo/vim-wombat256'
  Plugin 'sickill/vim-monokai'

" All of your Plugins must be added before the following line

  call vundle#end()            " required
  filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
" filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"NerdTree
"открывать дерево по ctrl+n
map <c-n> :NERDTreeToggle<cr>
" если запустить VIM без указания файла для редактирования,
" то дерево будет открыто, а если будет указан файл, то 
" дерево открыто не  будет

set showcmd        " Show (partial) command in status line.
set showmatch        " Show matching brackets.

set hlsearch        " highlight search
set ignorecase      " Do case insensitive matching
set smartcase       " Do smart case matching
set incsearch       " Incremental search

"set autowrite        " Automatically save before commands like :next and :make
set hidden         " Hide buffers when they are abandoned
set mouse=a        " Enable mouse usage (all modes)
set mousehide       " hide mouse after chars typed

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" открывать новые окна справа
set splitright

set laststatus=2        " always show status line.

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standart']

"let g:airline_theme='kalisi'
colorscheme monokai
set background=dark

noremap <Left> <NOP>
noremap <Down> <NOP>
noremap <Up> <NOP>
noremap <Right> <NOP>

set scrolloff=8

set nu

"set keymap=russian-jcukenwin
set iminsert=0
set hlsearch "подсвечивает искомое выражения
set wrap
set linebreak
set hidden
set matchpairs+=<:> " показывать совпадающие скобки для HTML-тегов

set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

set shiftwidth=4 " размер отступов (нажатие на << или >>)
set tabstop=4 " ширина табуляции
set softtabstop=4 " ширина 'мягкого' таба
set autoindent " ai - включить автоотступы (копируется отступ предыдущей строки)
set cindent " ci - отступы в стиле С
set expandtab " преобразовать табуляцию в пробелы
set smartindent " Умные отступы (например, автоотступ после {)
set autoread
" Для указанных типов файлов отключает замену табов пробелами и меняет ширину отступа
au FileType crontab,fstab,make set noexpandtab tabstop=4 shiftwidth=4

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
