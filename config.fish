# put in ~/.config/fish/config.fish

# custom path directories
if test -d ~/.local/bin
    fish_add_path ~/.local/bin
end

if test -d ~/.scripts
    fish_add_path ~/.scripts
end

# coreutil aliases
alias ll   "ls --color=auto -lXF"
alias la   "ls --color=auto -lAXF"
alias ls   "ls --color=auto -lAXF"
alias l    "ls --color=auto -lAXF"
alias rm   "rm -ri"
alias rmff "rm -rf"
alias cp   "cp -ri"
alias mv   "mv -i"
alias c    "clear"
alias e    "vim"
alias vi   "vim"

# git aliases
alias gs  "git status -sb"
alias ga  "git add"
alias gc  "git commit"
alias gcm "git commit -m"
alias gb  "git branch"
alias gco "git checkout"
alias gp  "git push"
alias gpl "git pull"
alias glg "git log --graph --pretty=format:'%Cred%h%Creset - %C(bold blue)<%an> %Cgreen(%cr)%Creset %s%C(yellow)%d%Creset' --abbrev-commit"

# environment variables
set -Ux EDITOR vim

# misc settings
if type -q zoxide
    zoxide init fish | source
end
