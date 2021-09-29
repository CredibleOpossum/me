set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim' " Rust plugin, mostly for code formatting 
Plugin 'z0mbix/vim-shfmt' " Formatting shell scripts

call vundle#end()
syntax enable
filetype plugin indent on

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab " Use spaces, make them act like tabs
set nowrap " No text wrapping
set number " Line numbers
set backspace=2 " For some reason backspace was broken, fix it

" Disable arrow keys, faster to use hjkl
noremap <up> <NOP>
noremap <down> <NOP>
noremap <left> <NOP>
noremap <right> <NOP>
inoremap <up> <NOP>
inoremap <down> <NOP>
inoremap <left> <NOP>
inoremap <right> <NOP>
