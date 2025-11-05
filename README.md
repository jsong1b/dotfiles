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

## Shell Configuration

I want to include `~/.local/bin` in my path for locally installed programs.

``` {.sh file=envvars.sh}
# add the following to your shell RC file:
# source <path/to/this/envvars.sh>

export PATH=$PATH:~/.local/bin
```

Some useful aliases, especially the `ls` and `ll` aliases.

``` {.sh file=aliases.sh}
# add the following to your shell RC file:
# source <path/to/this/aliases.sh>

alias ls="ls -AF --color=auto"
alias ll="ls -lAXF --color=auto"

alias rm="rm -ri"
```

Make the prompt pretty.

``` {.sh file=prompt.sh}
# add the following to your shell RC file:
# source <path/to/this/prompt.sh>

PS1="[$USER@$HOSTNAME] ${PWD}\n$ "
update_prompt() {
    exit_status=$?
    if [ $exit_status -eq 0 ]; then
        exit_status="\e[0;32m"
    else
        exit_status="\e[1;31m$exit_status "
    fi

    cur_dir=$(pwd | sed "s|^$HOME|~|")
    PS1="\e[0;36m$USER@$HOSTNAME \e[0;34m$cur_dir\n$exit_status$\e[0m "
}
PROMPT_COMMAND=update_prompt
```
