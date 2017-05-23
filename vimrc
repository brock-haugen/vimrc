call pathogen#infect()
call pathogen#helptags()

filetype on
syntax on
colorscheme Tomorrow-Night-Bright

filetype plugin on
filetype indent on

set hidden
set history=100

filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set smartindent
set autoindent

" remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

set hlsearch
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

set showmatch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set nobackup
set nowb
set noswapfile

set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

map 0 ^

" GitGutter
let g:gitgutter_sign_column_always=1

" CTRL-P
let g:ctrlp_working_path_mode=0

let g:ctrlp_map='<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height=20
let g:ctrlp_custom_ignore='node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

" Synastic
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_vue_checkers=['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
let g:syntastic_vue_eslint_exe='$(npm bin)/eslint'
