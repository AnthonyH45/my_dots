# For a nice greeting message!
fortune | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n1) | lolcat

export ZSH="~/.oh-my-zsh"
export EDITOR="vim"

ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"

plugins=(git autojump)

source $ZSH/oh-my-zsh.sh

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias suac='sudo apt-get update && sudo apt-get upgrade && sudo apt-get autoremove && sudo apt-get autoclean'
alias sauc='sudo apt-get update && sudo apt-get upgrade && sudo apt-get autoremove && sudo apt-get autoclean'
alias scua='sudo apt-get update && sudo apt-get upgrade && sudo apt-get autoremove && sudo apt-get autoclean'
alias scau='sudo apt-get update && sudo apt-get upgrade && sudo apt-get autoremove && sudo apt-get autoclean'
alias python=/usr/bin/python3
alias ks='ls'
alias cls='clear'
alias claer='clear'
alias caler='clear'
alias gdb='gdb -q'
alias gpp='g++ -Wall -Werror -Wuninitialized -g *.cpp -o main'
alias cd..='cd ..'
alias cd....='cd ../..'
alias g+++='g++ -Wall -Wuninitialized -g'
alias ram='egrep --color $mem /proc/meminfo'
alias fcl='fortune | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n1) | lolcat'
alias pip='pip3'
alias docker='sudo docker'
alias ghidra='~/tools/ghidra_9.1.1_PUBLIC/ghidraRun'
