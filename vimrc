set expandtab   "changes tabs to spaces DO NOT USE TABS
set shiftwidth=4  " 4 characters for indenting
set showmatch   " showmatch: Show the matching bracket for the last ')'?
set backspace=indent,eol,start "set the backspace so it behaves like a backspace
set nowrap    " don't wrap by default
syn on                                   "syntax on
set completeopt=menu,longest,preview
set confirm           
set number
set wrap
set linebreak
set nolist


nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
 call vundle#begin()
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'ervandew/supertab'
 Plugin 'fatih/vim-go'
 Plugin 'jcfaria/vim-r-plugin'
 Plugin 'tpope/vim-fugitive'
" Plugin 'gmarik/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'mustache/vim-mustache-handlebars'
"Plugin 'klen/python-mode'
Plugin 'othree/javascript-libraries-syntax.vim'
"Plugin 'moll/vim-node'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'stanangeloff/php.vim'
Plugin 'jnwhiteh/vim-golang'
Plugin 'nono/jquery.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'leshill/vim-json'
Plugin 'bash-support.vim'
Plugin 'vim-ruby/vim-ruby'

filetype plugin indent on    " required
"plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" " Git plugin not hosted on GitHub
" " git repos on your local machine (i.e. when working on your own plugin)
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}
 "source /Users/dustycarver/.vimpython
 call vundle#end()            " required
 colorscheme darkblue
