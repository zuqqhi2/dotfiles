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

" Status Line
set laststatus=2
set statusline=%<
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=[%l/%L,%c]%V%8P

" compatible with vi
set nocompatible

" Vundle Setting
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Vundle
Bundle 'gmarik/vundle'
" Supplement
Bundle 'Shougo/neocomplcache'
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_dictionary_filetype_lists = {
	\ 'default' : '',
	\ 'vimshell' : $HOME.'/.vimshell_hist',
	\ 'scheme' : $HOME.'/.gosh_completions'
		\ }
if !exists('g:neocomplcache_keyword_patterns')
	let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

Bundle 'Shougo/unite.vim'
" Programming Language Reference
Bundle 'thinca/vim-ref'
" Vimshell
Bundle 'Shougo/vimshell'
" Run program with inputing \r
Bundle 'thinca/vim-quickrun'
" coffee script syntax highlight
Bundle 'kchmck/vim-coffee-script'
" scala syntax highlight
Bundle 'derekwyatt/vim-scala'
filetype plugin indent on

