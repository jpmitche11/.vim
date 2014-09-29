set nocompatible

source ~/.vim/bundles.vim

filetype plugin indent on
syntax on
set background=dark
"colorscheme=distinguished

set number mouse=a
set showmode ruler laststatus=2

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

"TODO:  change color of these, add trailing space
set listchars=tab:▸\ ,eol:¬
set list

set ts=4 sts=4 sw=4 noexpandtab
set incsearch

"TODO: find a way to make effect more subtle
"set hlsearch
:noremap <F8> :set hlsearch! hlsearch?<CR>

nnoremap <leader>8 :set hlsearch<CR>mu*`u

"play around with these more:
"set ignorecase
"set smartcase

source ~/.vim/mappings.vim

if has("autocmd")
	autocmd BufWritePost .vimrc source $MYVIMRC
endif

if filereadable("project.vim")
	source project.vim
endif

