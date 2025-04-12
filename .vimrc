" put in ~/.vimrc or ~/.config/vim

" no bells
set novisualbell
set vb t_vb=
set noerrorbells
set belloff=all

" save settings
set noswapfile
set nowb
set nobackup
set autoread

" smart search
set smartcase
set hlsearch
set incsearch

" tab settings
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set smartindent

" wrap settings
set wrap
set so=10
noremap j gj
noremap k gk
noremap j gj
noremap k gk

" statusline settings
set laststatus=2
set statusline=
set statusline+=\ %y
set statusline+=\ %f
set statusline+=\ %m
set statusline+=\ %=
set statusline+=\ %l:%c
set statusline+=\ %p%%
set statusline+=\ 

" source project local configs (securely)
set exrc
set secure

" misc settings
set number
set showmatch
set cursorline
set encoding=utf8
set ffs=unix,dos,mac
colorscheme lunaperche
inoremap jk <ESC>
