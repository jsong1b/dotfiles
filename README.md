# Dotfiles

My config files.

The programs I'm using:
- vim

## vim Config

``` {.vim file=vimrc}
" link to ~/.vimrc
```

In most instances, I want tabs to be 4 spaces and actually spaces.

``` {.vim file=vimrc}
set shiftwidth=4
set tabstop=4
set expandtab
```

I do not want line wrapping because it looks ugly when I do splits in tmux.

``` {.vim file=vimrc}
set nowrap
set scrolloff=10
```

It is annoying when the highlights from searching remain after the search is finished.
Additionally, I want some case-smart searching.

``` {.vim file=vimrc}
set incsearch
set ignorecase
set smartcase
set showmatch
set nohlsearch
```

Line numbers are useful when debugging.

``` {.vim file=vimrc}
set number
set relativenumber
```

I want files to automatically reload, especially when doing anything literatly.

``` {.vim file=vimrc}
set autoread
call timer_start(100, {id -> execute('checktime')}, {'repeat': -1})
```

Here are some more general Vim settings:

``` {.vim file=vimrc}
syntax on
set nocompatible
filetype on
filetype plugin on
filetype indent on
set cursorline
set nobackup
set noswapfile
colorscheme habamax
```
