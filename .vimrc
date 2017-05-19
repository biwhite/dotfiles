" Auto reload .vimrc on writing
autocmd! bufwritepost .vimrc source %

set nocompatible
filetype off
set encoding=utf-8
set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'wincent/command-t'    " file navigation
Plugin 'tpope/vim-fugitive'   " git commands with :G<thing>
Plugin 'rstacruz/sparkup'     " write css style, expands into html
Plugin 'tmhedberg/SimpylFold' " nicer folds
Plugin 'Valloric/YouCompleteMe' " auto competion engine
Plugin 'scrooloose/syntastic'   " syntax checking
Plugin 'scrooloose/nerdtree' " tree explorer
Plugin 'vim-airline/vim-airline' "statusbar/top bar
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nelstrom/vim-markdown-preview'
Plugin 'PotatoesMaster/i3-vim-syntax'
Plugin 'navicore/vissort.vim'
Plugin 'danro/rename.vim'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'Taglist.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'michalbachowski/vim-wombat256mod'
Plugin 'flazz/vim-colorschemes'
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme wombat256mod
set number
set textwidth=79
set nowrap
set formatoptions-=t
set colorcolumn=80
highlight ColorColumn ctermbg=233
set history=1000
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set shiftround
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
syntax on
set hlsearch
set incsearch
set ignorecase
set smartcase
set ttimeout
set ttimeoutlen=50
" rebind control+direction to move between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" rebind space to fold
nnoremap <space> za
" always show a status line
set laststatus=2

" show top tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
" show docstrings for folded methods
let g:SimpylFold_docstring_preview=1
"
highlight BadWhitespace ctermbg=red
highlight UnwantedTab ctermbg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,.vimrc match BadWhitespace /\s\+$/
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,.vimrc match UnwantedTab /\t/


