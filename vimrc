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
set fileencodings=utf-8,latin1

" Tabs & spaces
set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab

" Allow hidden
set hidden

" Dark background
set bg=dark


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

" Vim-ish search
nnoremap <space> /
vnoremap <space> /


" Python -----------------------------------------------------------------------

augroup ft_python
  au!
  au FileType python setlocal define=^\s*\\(def\\\\|class\\) ts=4 sts=4 sw=4
  au FileType python setlocal cc=80
augroup END


" Vim --------------------------------------------------------------------------

augroup ft_vim
  au!
  au FileType vim setlocal tw=80 cc=80
augroup END
