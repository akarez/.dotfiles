export LANG=en_US.UTF-8

export EDITOR="nvim"
export BROWSER="firefox"
export TERMINAL="kitty"

autoload -U colors && colors

PROMPT='%F{blue}%1~ %F{green}$ %F{foreground}'

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/.zsh_history

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

source ~/.zsh/command-not-found.plugin.zsh
