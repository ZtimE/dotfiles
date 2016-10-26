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
" Highlights indention
Plugin 'nathanaelkane/vim-indent-guides'
" Airline
Plugin 'vim-airline/vim-airline'
" Ultisnip
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"rust
Plugin 'rust-lang/rust.vim'
" wakatime
Plugin 'wakatime/vim-wakatime'
" moving through text easy
Plugin 'easymotion/vim-easymotion'
" Ctrl - p fuzzy finding
Plugin 'ctrlpvim/ctrlp.vim'
"Nerdtree
Plugin 'scrooloose/nerdtree'
"Nerdtree git plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Compleation
Plugin 'ervandew/supertab'
" Autoclose brackets
Plugin 'Raimondi/delimitMate'
" Colors
Plugin 'crusoexia/vim-monokai'
"Syntastic
Plugin 'scrooloose/syntastic'
" Search tab complete
Plugin 'vim-scripts/SearchComplete'
" NERDcommenter
Plugin 'scrooloose/nerdcommenter'
" Git fugitive
Plugin 'tpope/vim-fugitive'
"Fix colors in terminal
Plugin 'godlygeek/csapprox'
" More c++ syntax
Plugin 'octol/vim-cpp-enhanced-highlight'
" =================================
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on
"========= Ctrl-p =========
set runtimepath^=~/.vim/bundle/ctrlp.vim 
"========= delimitMate =========
let delimitMate_expand_cr=1
let delimitMate_jump_expansion = 1
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

let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_complier_options = "-std=c++11"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" ======  md - syntax settings =======
let g:vim_markdown_folding_disabled=1
" ======  Ultisnip configuration =======
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<leader><tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets="<leader-b>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" ===== NERDTree settings=== 
" Map Nerdtree to f5
map <F5> :NERDTreeToggle<RETURN>
let NERDTreeIgnore=['\.o$', '\.out$', '.dSYM$[[dir]]']
" ===== General settings ==== 
" Old tab settings
"set tabstop=2
"set shiftwidth=2
"set softtabstop=2
"set expandtab
" use tab settings
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
"numbers
set number
syntax on
" ===== Color scheme ====
colorscheme monokai
" ===== Airline settings ====
set ttimeoutlen=50
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled = 1
" ==== Mappings ====
" Map leader
let mapleader=","
" visual up and down movement through wrapped lines/paragraphs
noremap j gj
noremap k gk
" Repmap for easy motion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
nmap s <Plug>(easymotion-s)
