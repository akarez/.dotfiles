export LANG=en_US.UTF-8

export EDITOR="nvim"
export BROWSER="firefox"
export TERMINAL="alacritty"

autoload -U colors && colors

PROMPT='%F{blue}%1~ %F{green}$ '

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/.zsh_history

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/doc/pkgfile/command-not-found.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
