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
" Context menu
"Bundle 'mbadran/headlights'
" Go lang support, auto-compleate and stuff
Plugin 'fatih/vim-go'
" Code-complete , looking for replacement
Plugin 'Valloric/YouCompleteMe'
" Align text in tables
Plugin 'godlygeek/tabular'
" Mappings for markdowm
Plugin 'plasticboy/vim-markdown'
" Theme
Plugin 'altercation/vim-colors-solarized'
" Highlights indention
Plugin 'nathanaelkane/vim-indent-guides'
" Airline-not used
Plugin 'bling/vim-airline'
" used by snipmate
"Plugin 'MarcWeber/vim-addon-mw-utils'
" adds some stuff other scripts uses,snipmate
"Plugin 'tomtom/tlib_vim'
" Provides snippets
"Plugin 'garbas/vim-snipmate'
" More snippets 
"Plugin 'honza/vim-snippets'
" Records the time you work on projects
Plugin 'wakatime/vim-wakatime'
" Minizink stuff
Plugin 'vale1410/vim-minizinc'
" moving through text easy
Plugin 'easymotion/vim-easymotion'
" Ctrl - p fuzzy finding
Plugin 'ctrlpvim/ctrlp.vim'
"Nerdtree
Plugin 'scrooloose/nerdtree'
"Nerdtree git plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'
" =================================
call vundle#end()            " required
filetype plugin indent on    " required
" ========= Patogen ========
execute pathogen#infect()
" ======== Powerline =======
" source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
" set laststatus=2
" ====== vim-surround =====
" source ~/.vim/bundle/vim-surround/plugin/surround.vim
"========= Ctrl-p =========
set runtimepath^=~/.vim/bundle/ctrlp.vim 
"========  php syntax ====
" source ~/.vim/bundle/php.vim/syntax/php.vim
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
" ==== Mappings ====
" Map leader
let mapleader=","
" Insert opening and closing curly bracket
" nmap <leader><RETURN> a<SPACE>{<RETURN>}<ESC>O
imap <F3> {<Return><Tab><Return>}<Esc><Up>A
" visual up and down movement through wrapped lines/paragraphs
noremap j gj
noremap k gk
" Repmap for easy motion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
nmap s <Plug>(easymotion-s)
