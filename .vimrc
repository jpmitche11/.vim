set nocompatible

source ~/.vim/bundles.vim

filetype plugin indent on
syntax on

set number mouse=a
set showmode  showcmd ruler laststatus=2
set scrolloff=3
set backspace=indent,eol,start
set visualbell t_vb=
set hidden
set formatoptions=crqlj

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

let g:delimitMate_expand_cr=1
let g:delimitMate_jump_expansion=0

let g:ctrlp_follow_symlinks=2
let g:ctrlp_show_hidden=1
let g:ctrlp_cmd="CtrlP ."

source ~/.vim/mappings.vim

set foldmethod=syntax



augroup refreshVimrc
	autocmd!
	autocmd BufWritePost .vimrc source $MYVIMRC
	autocmd BufWritePost ~/.vim/mappings.vim source $MYVIMRC
	autocmd BufWritePost ~/.vim/bundles.vim source $MYVIMRC
      
	autocmd BufWritePre *.js,*.css,*.html,*.vim silent %s/\s\+$//e
augroup END

