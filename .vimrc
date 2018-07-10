" Required for Vundle
set nocompatible
filetype off

syntax on
set nu
set nowrap
set ic

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set hlsearch
set smartcase

set wildmode=longest:full,full
set colorcolumn=80

" vv to generate new vertical split
nnoremap <silent> vv <C-w>v

" Begin Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Basics
Plugin 'tpope/vim-sensible'
Plugin 'bling/vim-bufferline'

" Tab alignment (use with :Tab)
" http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
Plugin 'godlygeek/tabular'

" Language/syntax 
Plugin 'tpope/vim-commentary'
Plugin 'Raimondi/delimitMate'
Plugin 'derekwyatt/vim-scala'
Plugin 'vim-scripts/csv.vim'
Plugin 'zah/nimrod.vim'
Plugin 'wting/rust.vim'
Plugin 'sukima/asciidoc-vim'
Plugin 'tpope/vim-markdown'

" Color themes
Plugin 'tpope/vim-vividchalk'

" Status bar - Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts=0
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_theme='molokai'

call vundle#end()

" End Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on

colorscheme vividchalk
