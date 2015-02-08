" Prelude ----------------------------------------------------------------------

execute pathogen#infect()
syntax on
filetype plugin indent on

" General configurations -------------------------------------------------------

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


" UI ---------------------------------------------------------------------------

" MacVim
if has('gui_running')
  set guifont=Menlo\ Regular:h12
  let g:solarized_italic = 0
  colorscheme solarized
endif


" Keybindings ------------------------------------------------------------------

" Emacs heresy
inoremap <c-a> <home>
inoremap <c-e> <end>
nnoremap <c-a> <home>
nnoremap <c-e> <end>
cnoremap <c-a> <home>
cnoremap <c-e> <end>


" Python -----------------------------------------------------------------------

augroup ft_python
  au!
  au FileType python setlocal define=^\s*\\(def\\\\|class\\)
  au FileType python setlocal ts=4 sts=4 sw=4
augroup END

