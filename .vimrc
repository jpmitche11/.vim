set nocompatible

source ~/.vim/bundles.vim

filetype plugin indent on
syntax on

set number mouse=a
set showmode  showcmd ruler laststatus=2
set backspace=indent,eol,start
set visualbell t_vb=
set hidden

set listchars=tab:▸\ ,eol:¬,trail:•
set list

set autoindent ts=4 sts=4 sw=4 noexpandtab
set incsearch

let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="normal"    "default value is normal
let g:solarized_visibility="low"    "default value is normal
syntax enable
set background=dark
colorscheme solarized
hi! SpecialKey term=bold ctermfg=9 gui=bold guifg=#064c57
hi! NonText    term=bold ctermfg=9 gui=bold guifg=#064c57

let delimitMate_expand_cr=1
let delimitMate_jump_expansion=1

let g:ctrlp_follow_symlinks=1
let g:ctrlp_cmd="CtrlP ."

source ~/.vim/mappings.vim

augroup refreshVimrc
	autocmd!
	autocmd BufWritePost .vimrc source $MYVIMRC
	autocmd BufWritePost ~/.vim/mappings.vim source $MYVIMRC
	autocmd BufWritePost ~/.vim/bundles.vim source $MYVIMRC
augroup END

