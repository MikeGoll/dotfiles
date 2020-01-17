#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -la --color=auto'
alias cls='clear'
alias hist='cls; history -cw'
alias disk-usage='df -h'
alias reload_bash='source ~/.bashrc'
alias cmatrix='unimatrix -n -s 90 -c "cyan" -l "o"'
PS1='[\u@\h \W]\$ '
export EDITOR=vim
