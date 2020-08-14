# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

fortune | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n1) | lolcat

export EDITOR="vim"

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
alias fcl='fortune | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n1) | lolcat'
alias pip='pip3'
alias docker='sudo docker'
alias radeon-profile='sudo radeon-profile'
