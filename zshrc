# zshrc 

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

## theme ##
autoload -Uz promptinit
promptinit
prompt sorin

## biocluster login ##
alias biocluster='ssh -XY -o ServerAliveInterval=30 cfisc004@biocluster.ucr.edu'
alias bc='ssh -XY -o ServerAliveInterval=30 cfisc004@biocluster.ucr.edu'

## aliases ##
alias ls='ls -GFh'
alias ll='ls -ahl'
alias less='less -S'
alias nonascii="LC_CTYPE=C grep --color='auto' -n -P '[\x80-\xFF]'"
alias grep="grep --color"
alias vim=nvim

## update prezto ##
update_prezto() {
  cd $ZPREZTODIR
  git pull
  git submodule update --init --recursive
}


