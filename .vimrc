"set foldmethod=syntax
"set foldlevelstart=1
"let xml_syntax_folding=1      " XML

set nocompatible
filetype off

set nu
set nowrap
set paste
set ic

set sw=2
set ts=2
set expandtab

set tw=80
set guifont=Monaco:h16

autocmd BufNewFile,BufRead *.json set ft=javascript

set wildmenu
set wildmode=longest:full,full

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'

Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-vividchalk'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-fireplace'

Plugin 'ervandew/supertab'

Plugin 'godlygeek/tabular'

Plugin 'honza/vim-snippets'

Plugin 'nvie/vim-flake8'

Plugin 'derekwyatt/vim-scala'

Plugin 'vim-scripts/csv.vim'

Plugin 'zah/nimrod.vim'

Plugin 'wting/rust.vim'

Plugin 'Valloric/YouCompleteMe'
let g:ycm_filetype_blacklist = { 'asciidoc': 1, 'markdown': 1, 'org': 1 }

Plugin 'jceb/vim-orgmode'

Plugin 'tpope/vim-speeddating'

Plugin 'sukima/asciidoc-vim'

Plugin 'ryanss/vim-hackernews'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsListSnippets="<c-tab>"

Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-airline'
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

call vundle#end()
filetype plugin indent on

colorscheme vividchalk
