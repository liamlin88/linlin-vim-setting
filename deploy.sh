#!/bin/bash

FILE=~/.vim/bundle/Vundle.vim
if [ -d "$FILE" ]; then
    echo -en "Vundle Installment [ ==------- ]\r"
    sleep .3
    echo -en "Vundle Installment [ =====---- ]\r"
    sleep .3
    echo -en "Vundle Installment [ ========= ] OK\n"
else
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    echo "Vundle installed"
fi

cp ../.vimrc ../.vimrc-copy
cat .vimrc >> ../.vimrc
echo -en "Deploy             [ =         ]\r"
sleep .3
echo -en "Deploy             [ ======    ]\r"
sleep .3
echo -en "Deploy             [ ========= ] OK\n"
sleep .3
echo "**** FINISH!!! BYE ****"

