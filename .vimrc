set nocompatible

source ~/.vim/bundles.vim

filetype plugin indent on
syntax on
set background=dark
let g:solarized_termtrans=1
colorscheme solarized

set number mouse=a
set showmode  showcmd ruler laststatus=2
set backspace=indent,eol,start
set visualbell t_vb=
" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

"TODO:  change color of these, add trailing space
set listchars=tab:▸\ ,eol:¬
set list

set autoindent ts=4 sts=4 sw=4 noexpandtab
set incsearch

set hlsearch

let g:ctrlp_follow_symlinks=1
"to use, put a .ctrlp-root file in project root folder
let g:ctrlp_root_markers = ['.ctrlp-root']

"play around with these more:
"set ignorecase
"set smartcase

source ~/.vim/mappings.vim

if has("autocmd")
	autocmd BufWritePost .vimrc source $MYVIMRC
endif

