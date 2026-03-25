# Lines configured by zsh-newuser-install
HISTFILE=~/.zshhistory
HISTSIZE=10000
SAVEHIST=30000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tanner/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /usr/share/zsh/plugins/zsh-you-should-use/zsh-you-should-use.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

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
#alias grep="ripgrep"
alias fda='fd -H'
alias ls='eza'
alias ll='eza -lah'
alias tree='eza --tree'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias path='echo -e ${PATH//:/\\n}'
alias rld='source ~/.bashrc'

#launcher function
run() {
  setsid "$@" >/dev/null 2>&1 < /dev/null &
}

#zoxide init
eval "$(zoxide init zsh)"
# Ignore duplicates and commands starting with space
HISTCONTROL=ignoreboth

# Save history after every command
PROMPT_COMMAND="history -a; history -c; history -r"

#prompt
PROMPT='%F{yellow}%n@%m %F{242}%~%f '

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh




