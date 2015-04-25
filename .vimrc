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
Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'bling/vim-airline'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
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
let g:syntastic_mode_map = {
	\"mode":"active",
	\"active_filetypes": ["java","ruby","php","python"],
	\"passive_filetypes": ["md", "go"] }
" ======  md - syntax settings =======
let g:vim_markdown_folding_disabled=1
"========  solarized settings =======
" set background=dark
" let g:solarized_termcolors=256
" ======== molokai settings ========
" let g:rehash256=1
" ===== General settings ==== 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number
syntax on
colorscheme molokai
" ===== Airline settings ====
set ttimeoutlen=50
set laststatus=2
let g:airline_powerline_fonts=1

