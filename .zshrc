#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

## biocluster login
alias bcl='ssh -XY -o ServerAliveInterval=30 cfisc004@biocluster.ucr.edu'

## aliases
## aliases ##
alias ls='ls -GFh'
alias ll='ls -ahl'
alias less='less -S'
alias nonascii="LC_CTYPE=C grep --color='auto' -n -P '[\x80-\xFF]'"
alias grep="grep --color"
alias vim=nvim
eval $(thefuck --alias)

# paths
export PATH="/Users/cjfiscus/miniconda3/bin:$PATH"

# 256 colors (suggested by southernlights)
if [ "$TERM" = "xterm" ] || [ "$TERM" = "xterm-256color" ]
then
    export TERM=xterm-256color
    export HAS_256_COLORS=yes
fi
if [ "$TERM" = "screen" ] && [ "$HAS_256_COLORS" = "yes" ]
then
    export TERM=screen-256color
fi
