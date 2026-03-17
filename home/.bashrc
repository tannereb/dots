#
# ~/.bashrc
#
fastfetch
export EDITOR=micro
export VISUAL=micro

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ff="firefox"
alias ra="ranger"
alias mi="micro"



r() {
  setsid "$@" >/dev/null 2>&1 < /dev/null &
}
complete -c r

# Much larger history
HISTSIZE=100000
HISTFILESIZE=200000

# Append instead of overwrite
shopt -s histappend

# Ignore duplicates and commands starting with space
HISTCONTROL=ignoreboth

# Save history after every command
PROMPT_COMMAND="history -a; history -c; history -r"

PS1='\[\e[38;5;244m\]\u@\h \[\e[38;5;81m\]\w\[\e[0m\] '


