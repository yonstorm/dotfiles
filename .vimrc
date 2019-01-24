if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set background=dark

call plug#begin('~/.vim/plugged')

Plug 'zxqfl/tabnine-vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-vinegar'
Plug 'kisom/eink.vim'
Plug 'tpope/vim-sensible'

call plug#end()

colorscheme eink
set encoding=utf-8

set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

set list

set nowrap " do not automatically wrap on load
set formatoptions-=t " do not automatically wrap text when typing
"set cursorcolumn
"set cursorline
