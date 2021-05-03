#!/bin/bash

working_dir=$(pwd)

vim_config_dir=~/.vim/config
text_vim_config_dir="~/.vim/config"

echo $working_dir
echo $vim_config_dir

if [ $vim_config_dir == $working_dir ]
then
    echo "In Correct Directory"
else 
    echo "In $working_dir not $vim_config_dir"
fi 


sed s?$text_vim_config_dir?$working_dir?g init.vim

ln -s $vim_config_dir/init.vim ~/.config/nvim/init.vim
