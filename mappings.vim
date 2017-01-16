vnoremap > >gv
vnoremap <TAB> >gv

vnoremap < <gv
vnoremap <S-TAB> <gv

nnoremap <TAB> >>

nnoremap <S-TAB> <<

nnoremap <C-K><C-B> :NERDTreeToggle<CR>

noremap <F7> :set relativenumber! relativenumber?<CR>
noremap <F8> :set hlsearch! hlsearch?<CR>

nnoremap <C-S> :w<CR>
vnoremap <C-S> <esc>:w<CR>gv

" something to do with debugging syntax hilights
noremap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

nnoremap <leader>8 :set hlsearch<CR>mu*`u

nnoremap <leader>ev :vsplit $MYVIMRC<cr>

nnoremap <leader>cs :set ignorecase! ignorecase?<CR>

inoremap kj <esc>
vnoremap kj <esc>

"Training
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>



nnoremap <leader>; :CtrlPBuffer<esc>

let g:ctrlp_buffer_func = { 'enter': 'CtrlPMappings' }

function! CtrlPMappings()
  nnoremap <buffer> <silent> <C-@> :call <sid>DeleteBuffer()<cr>
endfunction

function! s:DeleteBuffer()
  let path = fnamemodify(getline('.')[2:], ':p')
  let bufn = matchstr(path, '\v\d+\ze\*No Name')
  exec "bd" bufn ==# "" ? path : bufn
  exec "norm \<F5>"
endfunction


if has("gui_macvim") && has("gui_running")
	macmenu File.Print key=<nop>
	nmap <D-p> <C-p>
endif

if has("windows")
	nnoremap <A-a> ggVG
	vnoremap <A-a> <ESC>ggVG
	vnoremap <A-c> "*y
endif
