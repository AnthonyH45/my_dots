# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Startup message is a random cow saying a random fortune that is colored
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
alias g+++='g++ -Wall -Wuninitialized -g'
alias fcl='fortune | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n1) | lolcat'
alias pip='pip3'
alias docker='sudo docker'
alias radeon-profile='sudo radeon-profile'
alias sane='stty sane'

# git stuff, inspired by https://gitlab.com/dwt1/dotfiles/-/blob/master/.bashrc
alias ga='git add'
alias gaa='git add .'
alias gb='git branch'
alias gc='git checkout'
alias gclone='git clone'
alias gcommit='git commit -a -m'
alias gf='git fetch'
alias gpull='git pull'
alias gpush='git push'
alias gs='git status'

# the following are useful things I got from DistroTube's dot files
# found here, https://gitlab.com/dwt1/dotfiles/-/blob/master/.bashrc
### ARCHIVE EXTRACTION
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;      
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# navigation
alias ..='cd ..' 
alias ...='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

# termbin
alias tb="nc termbin.com 9999"

# the terminal rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
