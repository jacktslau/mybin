set background=dark

" solarized options
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors = 16

" Command history
set history=1000

" Syntax highlighting
syntax on

" Load indentation rules according to the detected filetype
filetype plugin indent on

" Show (partial) command in status line
set showcmd

" Show matching brackets.
set showmatch

" Do case insensitive matching
set ignorecase

" Do smart case matching
set smartcase

" Incremental search
set incsearch

" Automatically save before commands like :next and :make
set autowrite

" Hide buffers when they are abandoned
set hidden

" Backspace behaving as in other editors
set backspace=indent,eol,start

" Indentation/tabs
set tabstop=4
set shiftwidth=4
set expandtab
autocmd FileType ruby,eruby,yaml,scala set autoindent shiftwidth=2 softtabstop=2 expandtab
autocmd FileType c set autoindent shiftwidth=4 softtabstop=4 noexpandtab

" Unicode
set encoding=utf-8
