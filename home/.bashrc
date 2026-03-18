#
# ~/.bashrc
#

#fetch
fastfetch

#text editor
export EDITOR=micro
export VISUAL=micro

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ff="firefox"
alias ra="ranger"
alias mi="micro"
alias cat="bat"
alias grep="ripgrep"
alias fda='fd -H'
alias ls='eza'
alias ll='eza -lah'
alias tree='eza --tree'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias path='echo -e ${PATH//:/\\n}'
alias rld='source ~/.bashrc'

# just type dir name instead of "cd dir"
shopt -s autocd

#launcher function
r() {
  setsid "$@" >/dev/null 2>&1 < /dev/null &
}
#autocomplete in launcher function
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

#prompt
PS1='\[\e[93m\]\u@\h \[\e[90m\]\w\[\e[0m\] '


