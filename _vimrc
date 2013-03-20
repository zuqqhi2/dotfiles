set number
set ruler
set encoding=utf8
set paste
set textwidth=0
set softtabstop=3
set tabstop=3
set shiftwidth=3
set autoindent
set backspace=indent,eol,start
set incsearch
set ignorecase
set wildmenu
set commentstring=\ #\ %s
set foldlevel=0
set clipboard+=unnamed
syntax on

" Current Line Highlight
set cursorline

set nocompatible

" Vundle Setting
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'
Bundle 'thinca/vim-ref'
Bundle 'thinca/vim-quickrun'
Bundle 'kchmck/vim-coffee-script'
Bundle 'derekwyatt/vim-scala'
filetype plugin indent on

