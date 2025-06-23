#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f "$HOME/.device_ids" ]; then
  source "$HOME/.device_ids"
fi

# Default command aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Shortcut command aliases
alias vim="nvim"
alias neofetch="fastfetch"
alias keyboard-reset="sudo usbreset $KEYBOARD_ID"
alias fastfetch="clear;fastfetch"

# Script command aliases
alias uam-connect="sh ~/.uam-connect.sh"
alias audio-set="sh ~/.audio-setup.sh set"
alias audio-unset="sh ~/.audio-setup.sh unset"

eval "$(starship init bash)"
