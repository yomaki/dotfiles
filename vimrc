colorscheme darkblue
syntax on

set encoding=utf-8
set fileencodings=utf-8,sjis,iso-2022-jp

set ttymouse=xterm2
set number
set showmatch
set backspace=indent,eol,start
set autoindent smartindent smartcase

set ts=4 sw=4
set softtabstop=4
set expandtab
"set colorcolumn=80

if expand("%:t") =~ ".*\.py"
    set tabstop=4
    set shiftwidth=4
    set expandtab
endif

if expand("%:t") =~ ".*\.R"
    set tabstop=2
    set shiftwidth=2
endif

if expand("%:t") =~ ".*\.cpp"
    set tabstop=2
    set shiftwidth=2
endif

" High light for searching a word.
set hlsearch

set cursorline

" Show the title opened
set title

filetype plugin indent on


