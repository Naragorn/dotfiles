#!/bin/bash

# Install curl
sudo apt-get install curl

# Install zsh
echo "Install zsh and set it as default? (y/n)"
read install
if [ $install = "y" ]; then
    echo "Installing zsh..."
    sudo apt-get install zsh 

    # Install oh-my-zsh
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    rm ~/.zshrc
    rm ~/.zshrc.pre-oh-my-zsh
fi

# Install Neobundle for vim
echo "Installing Neobundle..."
sh -c "$(curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh)"

# Create symbolic links for all files in the folder besides the script
echo "Creating links..."
me=`basename "$0"`
dir=$(pwd)
for f in $(ls)
do
    if [ $f != `basename "$0"` ]
    then
        sudo ln -s $dir/$f ~/.$f
    fi
done

# Start vim
echo "Start vim and install plugins? (y/n)"
read y
if [ $y = "y" ]; then
    vim -n install
fi

# Compile YouCompleteMe
echo "Compile YouCompleteMe now? (y/n)"
read y
if [ $y = "y" ]; then
    sudo apt-get install build-essential cmake python-dev exuberant-ctags
    ~/.vim/bundle/YouCompleteMe/install.py
fi
