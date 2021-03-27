#/bin/sh

printf 'This script makes a backup of existing .vimrc, .Xresources, .zshrc, '
printf '\nIt then downloads the custom dotfiles I made'
printf '\nPlease run from the home directory too!'
printf '\nYou must have wget and git installed, this script also install vim, zsh, zsh-prezto, gdb, gdb-ped'
printf '\nThis script also assumes you have a debian system, please change the "apts" and what not\nto your distro specific installation cmds'
printf '\nPress [ENTER] to continue . . .'
read _

clear

# install vim,zsh,zsh-prezto, gdb, gdb-peda
sudo apt-get update
sudo apt-get install git -y
sudo apt-get install vim -y
sudo apt-get install zsh -y && zsh -c 'git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto" '
chsh -s /bin/zsh
sudo apt-get install -y fortune lolcat cowsay neofetch
sudo apt-get install -y gdb && git clone https://github.com/longld/peda.git ~/peda && echo "source ~/peda/peda.py" >> ~/.gdbinit

# check if a file exists, then back it up
# then download the new dot file

if [ -f ~/.vimrc ]; then
    # backup file
    mv ~/.vimrc ~/.OLDvimrc
fi

if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.OLDzshrc
fi

if [ -f ~/.Xresources ]; then
    mv ~/.Xresources ~/.OLDXresources
fi

# downloads the rc files

wget https://raw.githubusercontent.com/AnthonyH45/my_dots/master/.vimrc
wget https://raw.githubusercontent.com/AnthonyH45/my_dots/master/.zshrc
wget https://raw.githubusercontent.com/AnthonyH45/my_dots/master/.zpreztorc
wget https://raw.githubusercontent.com/AnthonyH45/my_dots/master/.Xresources

mv .vimrc ~/
mv .zshrc ~/
mv .Xresources ~/
mv .zpreztorc ~/
