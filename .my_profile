# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Create a Git alias that references the Git dotfiles repository and the local root directory from which Git adds files by default
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# Change the default vim editor
export EDITOR="nvim"

# Use a modern ls
alias ls="exa"

# Alias to open files
alias xopen="xdg-open"

export PATH="$HOME/.cargo/bin:$PATH"
