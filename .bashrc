#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# set the PS1
PS1="\[\e[0;37m\][ \[\e[0;36m\]\w \[\e[0;37m\]] \[\e[0;32m\]> \[\e[0m\]"

# colored ls
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'

# ls shortcuts
alias l=ls
alias ll='ls -l'

# colored less
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# enable 256 colors in tmux
alias tmux="TERM=xterm-256color tmux"

# use vim as editor
export VISUAL=vim
export EDITOR="$VISUAL"
export GIT_EDITOR=vim
