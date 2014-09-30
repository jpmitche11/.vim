"Sets up all vim plugins

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'gmarik/vundle'

Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'jszakmeister/vim-togglecursor'

call vundle#end()            " required
filetype plugin indent on    " required

