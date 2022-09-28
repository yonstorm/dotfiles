set nocompatible
set showmatch
set ignorecase
set mouse=v " paste with middle click
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number
set relativenumber

set wildmode=longest, list
set cc=80

filetype plugin indent on
syntax on

set clipboard=unnamedplus
filetype plugin on
set cursorline
set ttyfast

call plug#begin("~/.local/share/nvim/plugged")
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set splitright
set splitbelow
