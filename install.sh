#!/bin/bash

working_dir=$(pwd)

vim_config_dir=~/.vim/config

mkdir $vim_config_dir -p
mv ~/.vimrc ~/.vimrc.old
cp $working_config_dir $vim_config_dir"
if [ $EDITOR == "vim" ]
then
ln -s ${vim_config_dir}/.vimrc ~/.vimrc
else if [ $EDITOR=="nvim" ]
then
	mkdir ~/.config/nvim
	ln -s ${vim_config_dir}/init.vim ~/.config/nvim/init.vim
fi
