set title
set ruler
set showmatch
set ignorecase
set incsearch
set hlsearch
set bs=2
set nobackup

" https://en.parceljs.org/hmr.html#safe-write
set backupcopy=yes

set encoding=utf-8


set list listchars=nbsp:¬,tab:»·,trail:·,extends:>
set shiftwidth=4
set softtabstop=4
set tabstop=4

set background=dark

set undofile
set undodir=/tmp

syntax on
filetype plugin indent on
set nofoldenable


call plug#begin('~/.local/share/nvim/plugged')

" Quoting/parenthesizing plugin
Plug 'tpope/vim-surround'

" Syntax checking hacks for vim
Plug 'scrooloose/syntastic'

" git diff in the gutter
Plug 'airblade/vim-gitgutter'

" status/tabline for vim
Plug 'vim-airline/vim-airline'

" Code-completion
Plug 'valloric/youcompleteme'

" A Git wrapper by Tim Pope
Plug 'tpope/vim-fugitive'

" So commenting in & out code blocks works
Plug 'tpope/vim-commentary'

" So when I gf files, it actually works
Plug 'tpope/vim-apathy'

" fzf plugin
Plug 'junegunn/fzf'

" Tab completion
Plug 'ervandew/supertab'

" Vim start screen
Plug 'mhinz/vim-startify'

" Distraction-free writing
Plug 'junegunn/goyo.vim'

call plug#end()

let g:airline_powerline_fonts = 1

set wildmode=longest,list,full
set wildmenu

" restore cursor position when reopening a file
autocmd BufReadPost * call setpos(".", getpos("'\""))

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
