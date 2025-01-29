" Enable auto-indentation
set autoindent
" Enable smart indentation for programming
set smartindent

" Automatically wrap text at 80 character
set textwidth=80
" Enable line wrapping
set wrap 

" Set tab width to 4 spaces
set tabstop=4
" Set the number of spaces for auto-indentation
set shiftwidth=4
" Use spaces instead of tabs
set expandtab

" Auto-close brackets, braces, and quotes
call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
call plug#end()

" Visual Enhancements
set relativenumber
set number
syntax on
set mouse=a
set showmatch
set scrolloff=5

" Change cursor shape in different modes
if exists('$TMUX')
    " Use compatible codes for tmux
    let &t_SI = "\e[5 q"   " Vertical bar cursor in insert mode
    let &t_SR = "\e[4 q"   " Underline cursor in replace mode
    let &t_EI = "\e[2 q"   " Block cursor in normal mode
else
    " Regular terminal codes
    let &t_SI = "\e[6 q"   " Vertical bar cursor in insert mode
    let &t_SR = "\e[4 q"   " Underline cursor in replace mode
    let &t_EI = "\e[2 q"   " Block cursor in normal mode
endif
