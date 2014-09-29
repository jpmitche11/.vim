#!/bin/sh

if [ -f ~/.vimrc ]
then
	echo "saving backup .vimrc to ~/.vimrc-backup"
	mv ~/.vimrc ~/.vimrc-backup
fi

ln -s ~/.vim/.vimrc ~/.vimrc

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

