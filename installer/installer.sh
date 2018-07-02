#!/bin/bash
# temporary environment variables
export GITHOME=$HOME/Git
export CONFHOME=$GITHOME/ConFiles
export INSTALLERHOME=$CONFHOME/installer
export EMACSCONFHOME=$HOME/Git/ConFiles/emacs

# change package repository
printf "Do you want to change package repository to neowiz?\n"
read input
if [ $input = "y" ]; then
    sudo sed -i 's/archive.ubuntu.com/ftp.neowiz.com/g' /etc/apt/sources.list
    sudo apt-get update
fi

# add repository to install emacs25
printf "Do you want to add kelleyk/emacs repository?(for emacs25)\n"
read input
if [ $input == "y" ]; then
    sudo add-apt-repository ppa:kelleyk/emacs
fi

# package list for installation
packages="
gcc
g++
clang
emacs25
yakuake
xfce4
zsh
fonts-powerline
"

# install packages
printf "Do you want to install core packages?\n"
read input
if [ $input == "y" ]; then
    for i in $packages
    do
        sudo apt-get install -y $i
    done
fi

# install oh-my-zsh
printf "Do you want to install oh-my-zsh?\n"
read input
if [ $input = "y" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# list of default shell configuration files
rcfiles="
.bashrc
.zshrc
"

# wsl configuraton
printf "Are you using Windows Subsystem for Linux?\n"
read input

# wsl xwindow configuration
if [ $input = "y" ]; then
    for i in $rcfiles
    do
        echo "export DISPLAY=:0.0" >> $HOME/$i
    done    
fi

# add custom shell configuration files
printf "Do you want to add custom shell configuration files?\n"
read input
if [ $input = "y" ]; then
    for i in $rcfiles
    do
        echo "source $HOME/Git/ConFiles/sh/boot.sh" >> $HOME/$i  
    done
fi


# zsh theme
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' $HOME/.zshrc

# list of important emacs packages
emacscorepackages="
common.el
company.el
cpp.el
flycheck-c.el
shortcut-key.el
smartparen.el
undo-tree.el
"

# delete unnecessary emacs configuration files
printf "Do you want to use only c/c++?\n"
read input
if [ $input = "y" ]; then
    cd $EMACSCONFHOME
    mkdir backup
    for i in $emacscorepackages
    do
        cp elisp/$i backup/
    done    
    rm -rf elisp
    mv backup elisp
fi

# emacs prelude
printf "Do you want to install prelude?\n"
read input
if [ $input = "y" ]; then
    curl -L https://git.io/epre | sh
    cp $EMACSCONFHOME/custom.el $HOME/.emacs.d/personal/
fi
    
