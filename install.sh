#!/bin/bash

working_dir=$(pwd)

vim_config_dir=~/.vim/config

mkdir $vim_config_dir -p
mv ~/.vimrc ~/.vimrc.old
ln -s ${vim_config_dir}/.vimrc ~/.vimrc
