" Vundle configuration 
" ==============================================================
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" ========== My plugins ============
Bundle 'mbadran/headlights'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
" =================================
call vundle#end()            " required
filetype plugin indent on    " required
" ========= Patogen ========
execute pathogen#infect()
" ======== Powerline =======
" source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
" set laststatus=2
" ====== vim-surround =====
source ~/.vim/bundle/vim-surround/plugin/surround.vim
" ======= snipmate ========
source ~/.vim/bundle/snipmate/plugin/snipMate.vim
"========= Ctrl-p =========
set runtimepath^=~/.vim/bundle/ctrlp.vim 
"========  php syntax ====
source ~/.vim/bundle/php.vim/syntax/php.vim
" ======== gui settings for mvim ==========
" remove the scrollbars
set guifont=Inconsolata\ for\ Powerline:h13 
set guioptions-=r
set guioptions-=L
" ======== Syntastic settings =========
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" ======  md - syntax settings =======
let g:vim_markdown_folding_disabled=1
"========  solarized settings =======
set background=dark
let g:solarized_termcolors=256
" ===== General settings ==== 
set number
syntax on
colorscheme solarized
" ===== Airline settings ====
 let g:airline_left_sep = ''
 let g:airline_left_alt_sep = ''
 let g:airline_right_sep = ''
 let g:airline_right_alt_sep = ''
 let g:airline_symbols.branch = ''
 let g:airline_symbols.readonly = ''
 let g:airline_symbols.linenr = ''
