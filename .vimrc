let &t_Co=256

set nocompatible
filetype off

syntax on
colorscheme happy_hacking

let g:clang_library_path='/usr/lib/llvm-3.5/lib/libclang.so.1'
nnoremap gb :ls<CR>:b<Space>

" set relativenumber
set number

" Keep 3 lines after/before the cursor
set so=3

" Horizontal line
" au WinLeave * set nocursorline nocursorcolumn
" au WinEnter * set cursorline cursorcolumn
" set cursorline

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kris2k/a.vim'
Plugin 'valloric/youcompleteme'

call vundle#end()
filetype plugin indent on

" Fix problem with vim-airline not showing the status line until you split
set laststatus=2

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" set the terminal title
set title

