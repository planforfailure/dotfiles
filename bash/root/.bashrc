export PS1="\[\033[38;5;34m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;27m\]\w\[$(tput sgr0)\] \n\\\\ \\$ \[$(tput sgr0)\]"
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=500
HISTFILESIZE=500

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

 # enable color support of ls and also add handy aliases
alias ls='ls --color=auto'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'

# Shell
alias vi=vim
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias vi=vim
alias a=alias
alias ll='ls -ltrh'
alias la='ls -A'
alias l='ls -CF'
alias c=clear
alias p=pwd
alias df="df -h"
alias g=grep
alias psg='ps -ef | grep '
alias x=exit
alias hg='history | grep'
alias re='. ./.bashrc'
alias t=top
alias h=htop
alias y=history
alias du="du -sh"
alias rmf="rm -f"
alias rmr="rm -Rf"
alias shred='shred -vuz'
alias cl="crontab -l"
alias ce="crontab -e"
alias lt="ls -ltrh"
alias dmesg="dmesg -Tw"

# apt
alias clean='aptitude autoclean'
alias update='apt update'
alias upgrade='apt upgrade'
alias uy='apt upgrade -y'
alias search='apt-cache search'
alias purge='apt-get purge'
alias remove='apt remove'
alias only='sudo apt-get install --only-upgrade'
alias install='apt install -y'
