#!/bin/bash


read -r -p "Are you sure? [y/N] " response
case $response in
    [yY][eE][sS]|[yY])
 
         rm -rfv ~/.vim
         rm -v ~/.vimrc
         git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
         cp .vimrc ~/.vimrc
         vim +PluginInstall +qall

        ;;
    *)
        echo "aborting ..."
        ;;
esac
