" Prelude ----------------------------------------------------------------------

execute pathogen#infect()
syntax on
filetype plugin indent on


" General configurations -------------------------------------------------------

" Show line number
set nu

" No swap file
set noswapfile

" Dark background
set bg=dark

" Mouse support
set mouse=a

" Highlight search
set hlsearch

" Encodings
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" Tabs & spaces
set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab

" Allow hidden
set hidden


" Keybindings ------------------------------------------------------------------

" Leader
let mapleader=','

" Emacs heresy
nnoremap <c-a> <home>
nnoremap <c-e> <end>
inoremap <c-a> <esc>I
inoremap <c-e> <esc>A
cnoremap <c-a> <home>
cnoremap <c-e> <end>

" Tabs
nnoremap <D-n> :tabnew<CR>
inoremap <D-n> <esc>:tabnew<CR>

" Vim-ish search
nnoremap <space> /
vnoremap <space> /

" Go to file
let g:CommandTFileScanner='git'
let g:CommandTMaxHeight=10

" Grep
nnoremap <D-F> :Ag<space>

nnoremap <D-t> :CommandT<CR>
nnoremap <D-p> :CommandT<CR>
inoremap <D-t> <esc>:CommandR<CR>
inoremap <D-p> <esc>:CommandR<CR>

" Mac-ish search
nnoremap <D-f> /
inoremap <D-f> <esc>/
nnoremap <D-g> n
inoremap <D-g> <esc>n
nnoremap <D-G> N
inoremap <D-G> <esc>N
nnoremap <D-d> *
inoremap <D-d> <esc>*

" Toggle comment
nmap <D-/> <Plug>CommentaryLine
vmap <D-/> <Plug>Commentary
imap <D-/> <esc><Plug>CommentaryLine


" Python -----------------------------------------------------------------------

augroup ft_python
  au!
  au FileType python setlocal define=^\s*\\(def\\\\|class\\) ts=4 sts=4 sw=4
augroup END

" Vim --------------------------------------------------------------------------

augroup ft_vim
  au!
  au FileType vim setlocal tw=80 cc=80
augroup END
