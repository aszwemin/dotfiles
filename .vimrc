set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Python linting
Plugin 'scrooloose/syntastic'
" CtrlP
Plugin 'kien/ctrlp.vim'
" Delete whitespaces
Plugin 'vim-scripts/DeleteTrailingWhitespace'
" Tab autocompletion
Plugin 'rkulla/pydiction'
" Set of javascript plugins
Plugin 'pangloss/vim-javascript'
" JSON syntax
Plugin 'helino/vim-json'
" Follow requires
Plugin 'moll/vim-node'
" HTML5
Plugin 'othree/html5-syntax.vim'
Plugin 'othree/html5.vim'
" Less
Plugin 'groenewege/vim-less'
" JS libs
Plugin 'othree/javascript-libraries-syntax.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" sensible backspacing on expanded tabs
set softtabstop=4

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['jshint']

" Tab completion config for python
let g:pydiction_location = '/Users/anna/.vim/bundle/pydiction/complete-dict'

" Less
autocmd BufNewFile,BufRead *.less set filetype=less
autocmd FileType less set omnifunc=csscomplete#CompleteCSS

" JS libs
let g:used_javascript_libs = 'jquery,underscore,react,flux,requirejs,jasmine'
