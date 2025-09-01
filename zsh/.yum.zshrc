# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

HISTFILE="$HOME/.zsh_history"
HISTSIZE=500
SAVEHIST=500
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.


# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "arrow" "sunaku" "frontcube" "edvardm" "gnzh" "avit" "fino" "murilasso" "shrug" "funky" )
#ZSH_THEME_RANDOM_CANDIDATES=(  "dieter" "cypher" "mlh" "obraun" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
 DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
 HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
history
ansible
vault
terraform
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
 # enable color support of ls and also add handy aliases
alias vi=vim

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ..='cd ..'
alias a='alias'
alias attach='tmux attach'
alias c='clear'
alias ce='crontab -e'
alias cl='crontab -l'
alias crs=' s systemctl restart cron'
alias du='du -sh'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias g='grep'
alias grep='grep --color=auto'
alias h='htop'
alias hg='history | grep -i'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -lh'
alias ls='ls --color=auto'
alias lt='ls -ltrh'
alias p='pwd'
alias psg='ps auwfx | grep'
alias rmf='sudo rm -f'
alias rmr='sudo rm -Rf'
alias s='sudo'
alias t='top'
alias tailf='tail -f'
alias tmail='sudo tail -f /var/log/mail.log'
alias x='exit'
alias y='history'
alias root="sudo -i"
alias me="curl icanhazip.com"
alias dmesg="dmesg -Tw"
alias reboot="sudo systemctl reboot"
alias pk9="s pkill -9"
alias k9="kill -9"
alias srn="s systemctl restart networking"
alias ga="git add"
alias gr="git rm"
alias gc="git clone"
alias gcm="git commit -m"
alias gl="git pull"
alias gp="git push"
alias gs="git status"
alias gd="git diff"
alias lint="/home/$USER/.local/bin/ansible-lint"
alias 20="pwgen -s 20 1"
alias 16="pwgen -s 16 1"
alias 14="pwgen -s 14 1"
alias 12="pwgen -s 12 1"
alias rm="shred -vuz"
alias shred="shred -vuz"
alias 256=sha256sum
alias df="df -h"
alias updatedb="s updatedb"
alias clean='s yum repolist'
alias install='sudo yum install -y'
alias only='sudo yum install --only-upgrade'
alias purge=' sudo yum purge'
alias remove='sudo yum remove'
alias search='sudo apt-cache search'
alias update='sudo yum update'
alias upgrade='sudo yum upgrade'
alias uy='sudo yum upgrade -y'
