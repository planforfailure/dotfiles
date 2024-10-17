export PS1="\[\033[38;5;11m\]\u@\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;27m\]\w\[$(tput sgr0)\] \n\[$(tput sgr0)\]\[\033[38;5;10m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=50000
HISTFILESIZE=50000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

 # enable color support of ls and also add handy aliases
alias ls='ls --color=auto'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'
alias a='alias'
alias attach='tmux attach'
alias c='clear'
alias cd1='cd ..'
alias cd2='cd ../..'
alias cd3='cd ../../..'
alias cd4='cd ../../../..'
alias cd5='cd ../../../../..'
alias ce='crontab -e'
alias cl='crontab -l'
alias clean='s aptitude autoclean'
alias df='df -h'
alias du='du -sh'
alias duf='du -sh * | sort -hr'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias g='grep'
alias grep='grep --color=auto'
alias h='htop'
alias hg='history | grep '
alias install='sudo apt-get install -y'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -lh'
alias ls='ls --color=auto'
alias lt='ls -ltrh'
alias nmap='nmap -A -T4 -P0'
alias only='sudo apt-get install --only-upgrade'
alias p='pwd'
alias psg='ps -ef | grep'
alias purge=' sudo apt-get purge'
alias remove='sudo apt-get remove'
alias rmf='sudo rm -f'
alias rmr='sudo rm -Rf'
alias s='sudo'
alias search='sudo apt-cache search'
alias t='top'
alias tailf='tail -f'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias uy='sudo apt-get upgrade -y'
alias x='exit'
alias y='history'
alias root="sudo -i"
alias shred="shred -vuz" 

