#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/vim
alias config='/usr/bin/git --git-dir=/$HOME/vites/.cfg/ --work-tree=/home/vites'
