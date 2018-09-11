" Vundle stuff
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"Git wrapper"
"Plugin 'tpope/vim-fugitive'"

"Repeats map as a whole"
"Plugin 'tpope/vim-repeat'"

"Syntax highlighting and more for Markdown"
"Plugin 'tpope/vim-markdown'"

"Opening Files mechanism"
"Plugin 'vim-scripts/Command-T'"

"Powerful status line"
"Plugin 'Lokaltog/vim-powerline'"

"OCaml toplevel for vim"
"Plugin 'rbowden91/ocaml-vim'"

"CofeeScript support"
Plugin 'kchmck/vim-coffee-script'

"Typescript support"
Plugin 'leafgarland/typescript-vim'

"CJSX support"
Plugin 'mtscout6/vim-cjsx'

"Switch from .c to .h easily"
Plugin 'vim-scripts/a.vim'"

"Changes surrounding characters"
Plugin 'tpope/vim-surround'

Plugin 'elixir-editors/vim-elixir'

"Nerdtree for visualizing file trees"
Plugin 'scrooloose/nerdtree'

"Visualizes undo history"
Plugin 'sjl/gundo.vim'

"Adds to the php.vim that ships with vim"
Plugin 'php.vim--Garvin'

"Removes trailing whitespaces"
Plugin 'bronson/vim-trailing-whitespace'

"Color scheme for light backgrounds"
Plugin 'vim-scripts/habiLight'
"Plugin 'roman/golden-ratio'

" All of your Plugins must be added before the following line
call vundle#end()            " required
syntax enable
filetype plugin indent on    " required
" End Vundle stuff

runtime macros/matchit.vim

" disable annoying beep on errors
set visualbell t_vb=

noremap - ,
let mapleader=","

set pastetoggle=<leader>p
set nohidden
set backspace=indent,eol,start
set autoindent
set nu
set tabstop=4
set shiftwidth=4
set shiftround
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch
set mouse=a
set scrolloff=5
set ruler
set smartindent
set copyindent
set expandtab

"set virtualedit=all

function! ToggleMouse()
    if &mouse == 'a'
        set mouse=r
        set nonu
    else
        set mouse=a
        set nu
    endif
endfunction


" reopen a file at the same line it was on when previously closed
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif

" store all swp files here
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
set undodir=~/.vim/tmp
set viewdir=~/.vim/tmp

" use confirm instead of aborting an action
set confirm

" automatically save and open views (folds)
"set viewoptions-=options

augroup vimrc
    autocmd BufWritePost *
    \   if expand('%') != '' && &buftype !~ 'nofile'
    \|      mkview
    \|  endif
    autocmd BufRead *
    \   if expand('%') != '' && &buftype !~ 'nofile'
    \|      silent loadview
    \|  endif
augroup END

set foldmethod=indent
set foldlevel=999999
set textwidth=120
set undofile
set undolevels=1000
set history=1000

scriptencoding utf-8
set encoding=utf-8
set t_Co=256
"colorscheme smyck"

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-i> gt

inoremap jk <esc>

nnoremap <leader>m :call ToggleMouse()<CR>
nnoremap k gk
nnoremap j gj
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <silent> <leader>/ :nohlsearch<CR>
nnoremap <leader>w :FixWhitespace<CR>
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
