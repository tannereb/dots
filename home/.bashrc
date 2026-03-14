#
# ~/.bashrc
#
neofetch
export EDITOR=micro
export VISUAL=micro

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='\[\e[38;5;244m\]\u@\h \[\e[38;5;81m\]\w\[\e[0m\] '


