"Sets up all vim plugins

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'gmarik/Vundle.vim'

Bundle 'altercation/vim-colors-solarized'
Bundle 'pangloss/vim-javascript'
Bundle 'groenewege/vim-less'
Bundle 'mattn/emmet-vim'
Bundle 'Raimondi/delimitMate'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'jszakmeister/vim-togglecursor'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'maciakl/vim-neatstatus'

call vundle#end()            " required
filetype plugin indent on    " required

