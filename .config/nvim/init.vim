let mapleader =","

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

" Whitespace and tabs
set list listchars=nbsp:¬,tab:»·,trail:·,extends:>
set shiftwidth=8
set softtabstop=8
set tabstop=8


set background=dark

set undofile
set undodir=/tmp
set cindent
" set autoindent
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
" Plug 'mhinz/vim-startify'

" Clang based syntax highlighting
Plug 'arakashic/chromatica.nvim'

" Delete all the buffers except the current/named buffer
Plug 'vim-scripts/BufOnly.vim'

" A tree explorer 
Plug 'scrooloose/nerdtree'



call plug#end()

" Choromatica Clang highlighting
let g:chromatica#enable_at_startup=1
let g:chromatica#responsive_mode=1

let g:airline_powerline_fonts = 1

set wildmode=longest,list,full
set wildmenu

" restore cursor position when reopening a file
autocmd BufReadPost * call setpos(".", getpos("'\""))


" Syntastic configs
let g:syntastic_check_on_open = 1
let g:syntastic_c_checkers = ["gcc"]
let g:syntastic_python_flake8 = ["flake8"]
nmap <leader>scc :SyntasticCheck gcc<CR>
nmap <leader>scp :SyntasticCheck flake8<CR>


set diffopt+=iwhite " Ignore whitespace whilst diffing
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>


