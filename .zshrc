export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH

export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/cjfiscus/.oh-my-zsh

# Theme 
ZSH_THEME="robbyrussell"

# - = _ in command autocompetion 
HYPHEN_INSENSITIVE="true"

# Command Auto-Correction
ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git osx)

# Activate oh-my-zsh
source $ZSH/oh-my-zsh.sh


export LANG=en_US.UTF-8


# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

## make scripts executable
export PATH="$PATH:~/scripts"

## biocluster login 
alias biocluster='ssh -XY -o ServerAliveInterval=30 cfisc004@biocluster.ucr.edu'

## ls aliases 
alias ls='ls -GFh'
alias ll='ls -ahl'
alias less='less -S'
alias nonascii="LC_CTYPE=C grep --color='auto' -n -P '[\x80-\xFF]'"

## iTerm 2 shell integration 
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source /Users/cjfiscus/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
