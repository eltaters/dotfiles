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
alias mntnfs="sudo mount -t nfs fileserver.home:/nfs /nfs"
alias gitauth='eval "$(ssh-agent -s)"; ssh-add ~/.ssh/arch_git'

# Script command aliases
alias uam-connect="sh ~/.uam-connect.sh"
alias audio-set="sh ~/.audio-setup.sh set"
alias audio-unset="sh ~/.audio-setup.sh unset"

eval "$(starship init bash)"

# OMNeT: These statements load into the session the environment variables
if [ -z "$TMUX" ]; then
  [ -f "$HOME/omnetpp-6.0.3/setenv" ] && source "$HOME/omnetpp-6.0.3/setenv" -q
  [ -f "$HOME/omnetpp-6.0.3/inet4.5/setenv" ] && source "$HOME/omnetpp-6.0.3/inet4.5/setenv" -q
  [ -f "$HOME/omnetpp-6.0.3/simcan2chain/setenv" ] && source "$HOME/omnetpp-6.0.3/simcan2chain/setenv" -q
fi
