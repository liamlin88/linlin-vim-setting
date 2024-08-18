 set nocompatible              " be iMproved, required
 filetype off                  " required
 syntax on
 set autoindent expandtab tabstop=2 shiftwidth=2
 let mapleader=" "
 set backspace=indent,eol,start
 
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'ctrlpvim/ctrlp.vim'
 Plugin 'davidhalter/jedi-vim'
 Plugin 'ap/vim-buftabline' " show buffer list at top
 Plugin 'rking/ag.vim'
 Plugin 'preservim/nerdtree'
 Plugin 'airblade/vim-gitgutter' " show git diff
 Plugin 'vim-autoformat/vim-autoformat' 
 Plugin 'preservim/tagbar' " :Tagbar and show cur function name in status line
 Plugin 'vim-airline/vim-airline'
 Plugin 'vim-airline/vim-airline-themes'
 Plugin 'zivyangll/git-blame.vim' " :GitBlame
 Plugin 'tpope/vim-fugitive' " :Git blame/status
 Plugin 'easymotion/vim-easymotion' " jump with keystroke
 Plugin 'voldikss/vim-floaterm' " this is getting buggy
 Plugin 'ludovicchabant/vim-gutentags' " auto generate ctags file, doesn't work together with Tagbar
 
 
 call vundle#end()            " required
 filetype plugin indent on    " required
 
 imap jj <ESC>
 nnoremap <Tab> :bnext<CR>
 nnoremap <S-Tab> :bp<CR>
 nnoremap <Leader>x :bd<CR>
 
 nnoremap <Leader>n :NERDTreeFocus<CR>
 nnoremap <C-t> :NERDTreeToggle<CR>
 nnoremap <C-f> :NERDTreeFind<CR>
 
 let g:jedi#goto_command = "<leader>d"
 let g:jedi#goto_assignments_command = "<leader>g"
 let g:jedi#goto_stubs_command = "<leader>s"
 let g:jedi#goto_definitions_command = ""
 let g:jedi#documentation_command = ""
 let g:jedi#usages_command = "<leader>n"
 let g:jedi#completions_command = "<leader>c"
 let g:jedi#rename_command = "<leader>r"
 let g:jedi#rename_command_keep_name = "<leader>R"
 let g:jedi#popup_on_dot = 0
 let g:jedi#completions_enabled = 0
 
 nnoremap <Leader>gd :GitGutterDiffOrig<CR>
 
 nnoremap <Leader>gb :<C-u>call gitblame#echo()<CR>
 nnoremap <Leader>t :<C-u>Tagbar<CR>
 let g:airline#extensions#tagbar#flags = 'f' " show full tag hierarchy
 
 nmap s <Plug>(easymotion-overwin-f2)
 
 nnoremap   <silent>   <Leader>ff    :FloatermNew<CR>
 tnoremap   <silent>   <Leader>ff    <C-\><C-n>:FloatermNew<CR>
 nnoremap   <silent>   <Leader>fp    :FloatermPrev<CR>
 tnoremap   <silent>   <Leader>fp    <C-\><C-n>:FloatermPrev<CR>
 nnoremap   <silent>   <Leader>fn    :FloatermNext<CR>
 tnoremap   <silent>   <Leader>fn    <C-\><C-n>:FloatermNext<CR>
 nnoremap   <silent>   <Leader>fk   :FloatermKill<CR>
 tnoremap   <silent>   <Leader>fk  <C-\><C-n>:FloatermKill<CR>
 nnoremap   <silent>   <Leader>ft   :FloatermToggle<CR>
 tnoremap   <silent>   <Leader>ft   <C-\><C-n>:FloatermToggle<CR>
