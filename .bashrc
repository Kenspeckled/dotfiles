# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# ALIASES

# Move dirs
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias vhosts='cd /var/www/vhosts'

# Commands with options
alias ls="ls -GFh"

# Git
alias gs="git status"
alias gl="git log --oneline --abbrev-commit --all --graph --decorate --color"

# COLOURS

# ANSI color codes
RS="\[\033[0m\]"    # reset
HC="\[\033[1m\]"    # hicolor
UL="\[\033[4m\]"    # underline
INV="\[\033[7m\]"   # inverse background and foreground
FBLK="\[\033[30m\]" # foreground black
FRED="\[\033[31m\]" # foreground red
FGRN="\[\033[32m\]" # foreground green
FYEL="\[\033[33m\]" # foreground yellow
FBLE="\[\033[34m\]" # foreground blue
FMAG="\[\033[35m\]" # foreground magenta
FCYN="\[\033[36m\]" # foreground cyan
FWHT="\[\033[37m\]" # foreground white
BBLK="\[\033[40m\]" # background black
BRED="\[\033[41m\]" # background red
BGRN="\[\033[42m\]" # background green
BYEL="\[\033[43m\]" # background yellow
BBLE="\[\033[44m\]" # background blue
BMAG="\[\033[45m\]" # background magenta
BCYN="\[\033[46m\]" # background cyan
BWHT="\[\033[47m\]" # background white

# Prompt name
PS1="$HC$FRED\u$FYEL:$FBLE\w $FGRN(\$(git branch 2>/dev/null | grep '^*' | colrm 1 2))$FRED ☛  $RS"
PS2="$HC$FYEL&gt; $RS"

# Bash colors
export TERM=xterm-256color
TERM=screen-256color
