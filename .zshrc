# Path to your oh-my-zsh installation.
export ZSH=$HOME/.dotfiles/zsh

ZSH_THEME="pure"

plugins=(git git-flow sublime)

# User configuration

source $ZSH/oh-my-zsh.sh

# Load the shell dotfiles:
# * ~/dotfiles/path can be used to extend `$PATH`.
for file in ~/.dotfiles/{path,exports,aliases,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='atom-beta -nw'
fi
