#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

##### exports #####

export NO_AT_BRIDGE=1
export GTK_A11Y=none
export MOZ_ENABLE_WAYLAND=1
export GDK_BACKEND=wayland
export EDITOR='vim'
export OPENER='rifle'
export GTK_THEME='Adwaita:dark'

##### alias #####

alias q='exit'
alias v='vim'
alias t='tmux'

alias kk="kill $(ps -s $1 -o pid=)"

if [[ -f "$(which bat)" ]]; then
  alias cat='bat -p --paging never'
fi

alias ls='ls --color=auto'

if [[ -f "$(which lsd)" ]]; then
  alias ls='lsd'
fi

alias l='ls -l'
alias ll='ls -la'
alias lll='ls -la --size bytes'

alias grep='grep --color=auto'

# endless history
HISTSIZE=
HISTFILESIZE=

# Prepend cd to directory names automatically
shopt -s autocd 2> /dev/null

PS1='[\u@\h \W]\$ '

