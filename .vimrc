inoremap jj <Esc>

" ctrl+c to toggle search highlight.
nnoremap <c-n> :noh<CR>

" simplify window switches
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

" tab switch (useful when your open a terminal)
map <C-Left> gT 
map <C-Right> gt 

set clipboard=unnamed
" ======================================================================================
" For easymotion
" s to <leader><leader>s for easymotion search 
map s <Leader><Leader>s
" set the color scheme for easymotion search as yellow
hi link EasyMotionTarget Search 

" ======================================================================================
" For nerdtree
" How can I open a NERDTree automatically when vim starts up if no files were specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" ctrl+b to toggle nerdtree
map <C-b> :NERDTreeToggle<CR>


" ======================================================================================
" Enable folding
" set foldmethod=indent
" set foldlevel=99

" nnoremap <space> za

" ======================================================================================
" For vundle (Plugin manager)
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdtree'

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
