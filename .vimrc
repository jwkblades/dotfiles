se nocompatible
filetype off
se rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Bundle "VundleVim/Vundle.vim"
Bundle "vim-airline/vim-airline"
Bundle "vim-airline/vim-airline-themes"
Bundle "vim-scripts/ZoomWin"
Bundle "tpope/vim-fugitive"
Bundle "elzr/vim-json"

call vundle#end()
filetype plugin indent on

se ts=2
se sts=2
se sw=2
se ai
se si
se incsearch
se hlsearch
syntax on
se ruler
se modelines=0
se nomodeline
se bs=2

colorscheme defaultPlus

set ttimeoutlen=50
set laststatus=2
let g:airline_theme="simple"
let g:airline#extensions#bufferline#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_z = "%3P %{g:airline_symbols.linenr}%#__accent_bold#%4l%#__restore__#:%3c"
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.branch = '⎇'
