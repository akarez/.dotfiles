# Export Default Programs

export EDITOR=nvim
export BROWSER=firefox

# If not running interactively, don't do anything

[[ $- != *i* ]] && return

#Commands

alias ls='ls --color=auto'
alias v='nvim'
alias ino='arduino-cli'

#Config Shortcuts

alias bc='nvim ~/.config/bspwm/bspwmrc'
alias sc='nvim ~/.config/sxhkd/sxhkdrc'
alias ac='nvim ~/.config/alacritty/alacritty.yml'
alias pc='nvim ~/.config/polybar/config'

# USF 216 Lab and VPN Shortcuts

alias c4='ssh ahmed1@cselx01.csee.usf.edu'
alias gp-c='globalprotect connect'
alias gp-d='globalprotect disconnect'
alias gp-s='globalprotect status'

# Prompt

PS1="\W \$ "


. "$HOME/.cargo/env"
