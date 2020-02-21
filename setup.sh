#/bin/sh

printf 'This script makes a backup of existing .vimrc, .Xresources, .zshrc'
printf '\nIt then downloads the custom dotfiles I made'
printf '\nPlease run from the home directory too!'
printf '\nYou must have wget installed (as well as vim and zsh with oh-my-zsh)'
# I am working on a script to download those and set them up as well
# TODO: install wget, vim, zsh, urxvt, gdb
# THEN: install dot files, then automate setup
# More to come
printf '\nPress [ENTER] to continue . . .'
read _

clear

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

wget https://raw.githubusercontent.com/AnthonyH45/my_dots/master/.vimrc
wget https://raw.githubusercontent.com/AnthonyH45/my_dots/master/.zshrc
wget https://raw.githubusercontent.com/AnthonyH45/my_dots/master/.Xresources

mv .vimrc ~/
mv .zshrc ~/
mv .Xresources ~/
