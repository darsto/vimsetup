set nocompatible
filetype off

syntax on
colorscheme hipster

let g:clang_library_path='/usr/lib/llvm-3.5/lib/libclang.so.1'

" Show line numbers
set number

" Keep 3 lines after/before the cursor
set so=3

" Allow unsaved buffers in background
set hidden

" Search down into subfolders
set path+=**

" Horizontal line
" au WinLeave * set nocursorline nocursorcolumn
" au WinEnter * set cursorline cursorcolumn
set cursorline

" Insert spaces instead of tabs
set tabstop=4 shiftwidth=4 expandtab

syntax on
highlight ColorColumn ctermbg=235 guibg=#2c2d27
hi Visual cterm=NONE ctermbg=0 ctermfg=NONE guibg=Grey
hi! link CursorLine Visual

" 256 colors
let &t_Co=256

" Color columns 80+
let &colorcolumn=81

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kris2k/a.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
" Plugin 'kshenoy/vim-signature'
" Plugin 'easymotion/vim-easymotion'
" Plugin 'xolox/vim-easytags'
" Plugin 'taglist.vim'
" Plugin 'xolox/vim-misc'
Plugin 'lifepillar/vim-cheat40'
" Plugin 'troydm/zoomwintab.vim'
" Plugin 'wesQ3/vim-windowswap'
" Plugin 'c.vim'

call vundle#end()
filetype plugin indent on

" Fix problem with vim-airline not showing the status line until you split
set laststatus=2

" Enable mouse integration
set mouse=a

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_exclude_preview = 1

let g:CtrlSpaceUseMouseAndArrowsInTerm = 1

map [b :bp<CR>
map ]b :bn<CR>

map [t :tabp<CR>
map ]t :tabn<CR>

" set the terminal title
set title

" bash-like completion
set wildmode=longest,list

" highlight search results
set hlsearch

" c folding from c.vim
" set foldmethod=syntax

" unfold by default
" autocmd FileType * exe "normal zR"

" highlight word under cursor
nnoremap <C-F> *#
inoremap <C-F> <C-o>*<C-o>#

" Go to mark
" nnoremap k `

" More friendly C-Arrow word navigation
nnoremap <C-Left> <C-S-Left>
nnoremap <C-Right> <C-S-Right>

nnoremap <C-S-Down> <C-D>
nnoremap <C-S-Up> <C-U>

" Cancel highlighting
nnoremap <silent> <C-G> :noh<CR>

" Enter will insert empty line after cursor
nnoremap <CR> $<S-A><CR>

" Insert empty line before selected line
inoremap <C-L> <C-o>^<CR>
nnoremap <C-P> ^i<CR><C-c>

" Insert empty line after selected line
inoremap <C-L> <C-o>$<Right><CR>
nnoremap <C-L> $<S-A><CR>

" Show buffer list and wait to select one
nnoremap gb :ls<CR>:b<Space>

" Entering normal mode
nnoremap ; :

" Backspace/delete will switch to insert mode
nnoremap <BS> i<BS>
nnoremap <DEL> i<DEL>

cnoreabbrev taglist TlistToggle

source ~/.vim/plugin/mksession.vim
