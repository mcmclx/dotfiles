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
set colorcolumn=80

" vv to generate new vertical split
nnoremap <silent> vv <C-w>v

" Remap split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Prompt for a command to run within a new tmux split
nnoremap <silent> vp :VimuxPromptCommand<CR>

" Python Customizations
autocmd FileType python call SetPythonOptions()
function! SetPythonOptions()
    :call tagbar#autoopen(0)
endfunction

" Begin Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-vividchalk'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'

Plugin 'dracula/vim'

Plugin 'godlygeek/tabular'

Plugin 'benmills/vimux'

" vim-autoclose was causing problems with YouCompleteMe
" see: https://github.com/Valloric/YouCompleteMe/issues/9
"Plugin 'Townk/vim-autoclose'
Plugin 'Raimondi/delimitMate'

Plugin 'majutsushi/tagbar'

Plugin 'mindriot101/vim-yapf'

Plugin 'bling/vim-bufferline'

Plugin 'Valloric/YouCompleteMe'
"let g:ycm_filetype_blacklist = { 'asciidoc': 1, 'markdown': 1, 'org': 1, 'text': 1 }
let g:ycm_filetype_whitelist = {'python': 1, 'cpp': 1, 'c': 1}
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

"""" Formatters
" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plugin 'google/vim-glaive'

call vundle#end()


call glaive#Install()
" Optional: Enable codefmt's default mappings on the <Leader>= prefix.
Glaive codefmt plugin[mappings]

filetype plugin indent on
" End Vundle 

augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
augroup END

"colorscheme vividchalk
color dracula
