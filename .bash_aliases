# File manipulation verbose
alias mv="mv -v"
alias rm="rm -vi"
alias cp="cp -v"

# Easier navigation: .., ~ and -
alias ..="cd .. && pwd"
alias -- -="cd - && pwd"
alias ~="cd ~ && pwd"

# Shortcuts
alias ws="cd ~/ws && pwd"

## Create a directory hierarchy
alias mkdir='mkdir -pv'
alias mkcd='_(){ mkdir $1; cd $1; echo $(pwd);  };_'

## Print list of $PATH
alias path='echo -e ${PATH//:/\\n}'

# List all files colorized in long format
alias l="ls -C --group-directories-first"

## Show files with a long listing format
alias ll="ls -la --group-directories-first"

## Show hidden files
alias l.="ls -a -C --group-directories-first"

# List only directories
alias ld="ls -D -C --group-directories-first"

## Print a long bar as follows
## ================================================================================
alias l-='tput setaf 5 && printf "\n%80s\n\n" | tr " " = && tput sgr 0'

## Show total size of all the target folder contents 
## usage) d [file or folder]
alias d='du -sh'

## List files and folders and sort them by size (kb units)
alias ds='du -sk * | sort -nr'

## Print exit code from the last run command
alias e='echo $?'

## Rerun the last command (shorter than '!!')
alias r='fc -s'

# Clear the screen of your clutter
alias c="clear"
alias cl="clear;ls;pwd"

## Converting numbers to decimal format
## e.g) dec 0x7fffffff
alias dec='printf "%d\n"'

## Converting numbers to hexadecimal format
## e.g) hex 0x7fffffff
alias hex='printf "%x\n"'

## Obtain the current date & time
alias now='date "+DATE: %y/%m/%d%nTIME: %H:%M:%S"'
alias d-t='date "+%y-%m-%d_%Hh%Mm%Ss"'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ip addr show"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
alias http-serv="python3 -m http.server"

# system update
alias updt="sudo apt update -yq && sudo apt upgrade -yq"

# view npm global installed package
alias npmg="npm list -g --depth 0"

## Bash completion for alias names
## e.g) Just typing 'alias l <tab><tab>' will suggest every aliases that start with 'l'
## Convenient when you don't remember the whole name of the alias you need for the moment
complete -A alias "alias"
