" Required for Vundle
set nocompatible
filetype off

syntax on
set nu
set nowrap

set tabstop=4
set shiftwidth=4
set softtabstop=4
set textwidth=80
set smarttab
set expandtab
set hlsearch
set smartcase

set wildmenu
set wildmode=longest:full,full

" Python Customizations
autocmd FileType python call SetPythonOptions()
function! SetPythonOptions()
    :call tagbar#autoopen(0)
endfunction

" Always call flake8 when saving a python file
autocmd BufWritePost *.py call Flake8()

" Begin Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-vividchalk'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'

Plugin 'godlygeek/tabular'

" vim-autoclose was causing problems with YouCompleteMe
" see: https://github.com/Valloric/YouCompleteMe/issues/9
"Plugin 'Townk/vim-autoclose'
Plugin 'Raimondi/delimitMate'

Plugin 'nvie/vim-flake8'

Plugin 'majutsushi/tagbar'

Plugin 'bling/vim-bufferline'

Plugin 'Valloric/YouCompleteMe'
let g:ycm_filetype_blacklist = { 'asciidoc': 1, 'markdown': 1, 'org': 1 }
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts=0
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_theme='molokai'

" Language-specific plugins

Plugin 'derekwyatt/vim-scala'

Plugin 'vim-scripts/csv.vim'

Plugin 'zah/nimrod.vim'

Plugin 'wting/rust.vim'

Plugin 'sukima/asciidoc-vim'

call vundle#end()
filetype plugin indent on
" End Vundle 

colorscheme vividchalk
