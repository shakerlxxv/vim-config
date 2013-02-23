# vim-config

Vim configuration files and plugins

## Installation

    git clone https://github.com/shakerlxxv/vim-config.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    cd ~/.vim
    git submodule update --init

## Notes

This configuration uses [Tim Pope's](http://tpo.pe/) [pathogen](https://github.com/tpope/vim-pathogen) script to manage Vim's runtime files.
It's installed manually by copying the pathogen.vim script into @~/.vim/autoload@ directory.

After installation you want to generate your help tags in a VIM editor:

    :Helptags


