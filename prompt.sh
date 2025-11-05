# ~/~ begin <<README.md#prompt.sh>>[init]
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
# ~/~ end
