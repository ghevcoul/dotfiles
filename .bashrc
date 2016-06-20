
# Define colours for bash prompt
noColor="\e[0m"
green="\e[0;32m"
blue="\e[1;34m"
cyan="\e[0;36m"
purple="\e[0;35m"

# Set bash prompt to show current time, hostname, and path using above colours
PS1="\[$cyan\][\t]\[$noColor\] \[$blue\]\u@`hostname`\[$noColor\] \[$purple\]\w\[$noColor\]\n \[$green\]$\[$noColor\] "
#PS1="[\t] \W $ "

alias ls="ls -AhG"

