#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias vim='nvim'
alias vi='nvim'

alias ls='ls --color=auto'
alias cls='clear'

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

PS1='[\u@\h \W]\$ '

export PATH=$PATH:~/.local/bin
