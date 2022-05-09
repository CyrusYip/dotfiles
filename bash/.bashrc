#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
[ -r ~/.byobu/prompt ] && . ~/.byobu/prompt   #byobu-prompt#

source ~/.config/broot/launcher/bash/br
