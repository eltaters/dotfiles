#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Default command aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Shortcut command aliases
alias vim="nvim"
alias neofetch="fastfetch"
alias fastfetch="clear;fastfetch"
alias mntnfs="sudo mount -t nfs fileserver.home:/nfs /nfs"
alias gitauth='eval "$(ssh-agent -s)"; ssh-add ~/.ssh/arch_git'
alias kssh='kitten ssh'
alias clear="clear ; printf '\E[H\E[3J'"
alias venv='source .venv/bin/activate'

# Script command aliases
alias uam-connect="sh ~/.uam-connect.sh"
alias audio-set="sh ~/.audio-setup.sh set"
alias audio-unset="sh ~/.audio-setup.sh unset"

eval "$(starship init bash)"

# OMNeT: These statements load into the session the environment variables
OMNET_PATH="$HOME/omnetpp-6.3.0"
if [ -z "$TMUX" ]; then
  [ -f "$OMNET_PATH/setenv" ] && source "$OMNET_PATH/setenv" -q
  [ -f "$OMNET_PATH/inet4.5/setenv" ] && source "$OMNET_PATH/inet4.5/setenv" -q
  [ -f "$OMNET_PATH/Simcan2Fog/setenv" ] && source "$OMNET_PATH/Simcan2Fog/setenv" -q
fi

alias gentest="rm -rf work && python3 auto/gentestfile.py && ./gentest.sh p2p/*"
alias runtest="./runtest.sh p2p/*"

# LaTeX paths
export PATH=/usr/local/texlive/2025/bin/x86_64-linux:$PATH
export MANPATH=/usr/local/texlive/2025/texmf-dist/doc/man:$MANPATH
export INFOPATH=/usr/local/texlive/2025/texmf-dist/doc/info:$INFOPATH

# Zoxide
eval "$(zoxide init bash)"
alias cd="z"

