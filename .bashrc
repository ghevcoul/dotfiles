
# Define colours for bash prompt
noColor="\e[0m"
green="\e[0;32m"
blue="\e[1;34m"
cyan="\e[0;36m"
purple="\e[0;35m"

# Set bash prompt to show current time, hostname, and path using above colours
PS1="\[$cyan\][\t]\[$noColor\] \[$blue\]\u@`hostname`\[$noColor\] \[$purple\]\w\[$noColor\]\n \[$green\]$\[$noColor\] "

if [ `uname` == "Darwin" ]
  then
    alias ls="ls -AhG"
else
    alias ls="ls -Ah --color=auto"
fi

# Colourize man pages
# http://boredzo.org/blog/archives/2016-08-15/colorized-man-pages-understood-and-customized
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}
