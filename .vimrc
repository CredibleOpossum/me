set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim' " Rust plugin, mostly for code formatting 

call vundle#end()
syntax enable
filetype plugin indent on

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab " Use spaces, make them act like tabs
set nowrap " No text wrapping
set number " Line numbers
set backspace=2 " For some reason backspace was broken, fix it

noremap <Up> <Nop> " Unmap arrow keys, faster to use hjkl
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

nnoremap <up> <C-a> " Use arrow keys for more useful things
nnoremap <down> <C-x>


