" ~/~ begin <<README.md#vimrc>>[init]
" link to ~/.vimrc
" ~/~ end
" ~/~ begin <<README.md#vimrc>>[1]
set shiftwidth=4
set tabstop=4
set expandtab
" ~/~ end
" ~/~ begin <<README.md#vimrc>>[2]
set nowrap
set scrolloff=10
" ~/~ end
" ~/~ begin <<README.md#vimrc>>[3]
set incsearch
set ignorecase
set smartcase
set showmatch
set nohlsearch
" ~/~ end
" ~/~ begin <<README.md#vimrc>>[4]
set number
set relativenumber
" ~/~ end
" ~/~ begin <<README.md#vimrc>>[5]
set autoread
call timer_start(100, {id -> execute('checktime')}, {'repeat': -1})
" ~/~ end
" ~/~ begin <<README.md#vimrc>>[6]
syntax on
set nocompatible
filetype on
filetype plugin on
filetype indent on
set cursorline
set nobackup
set noswapfile
colorscheme habamax
" ~/~ end
