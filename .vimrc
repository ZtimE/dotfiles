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
"Plugin 'fatih/vim-go'
" Code-complete , looking for replacement
"Plugin 'Valloric/YouCompleteMe'
" Align text in tables
" Plugin 'godlygeek/tabular'
" Mappings for markdowm
" Plugin 'plasticboy/vim-markdown'
" Theme
" Plugin 'altercation/vim-colors-solarized'
" Highlights indention
Plugin 'nathanaelkane/vim-indent-guides'
" Airline-not used
Plugin 'bling/vim-airline'
" Ultisnip
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"rust
" Plugin 'rust-lang/rust.vim'
" wakatime
Plugin 'wakatime/vim-wakatime'
" Minizink stuff
" Plugin 'vale1410/vim-minizinc'
" moving through text easy
Plugin 'easymotion/vim-easymotion'
" Ctrl - p fuzzy finding
Plugin 'ctrlpvim/ctrlp.vim'
"Nerdtree
Plugin 'scrooloose/nerdtree'
"Nerdtree git plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Swift syntax highlightning
" Plugin 'keith/swift.vim'
" Supertab - autocompleate
Plugin 'ervandew/supertab'
" Validator
"iPlugin 'maralla/validator.vim'
" Theme
" Plugin 'roosta/srcery'
Plugin 'Marfisc/vorange'
"Syntastic
Plugin 'scrooloose/syntastic'
" =================================
call vundle#end()            " required
filetype plugin indent on    " required
" ========= Patogen ========
" execute pathogen#infect()
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

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_mode_map = {
"	\"mode":"active",
"	\"active_filetypes": ["java","ruby","php","python"],
"	\"passive_filetypes": ["md", "go"] }
" ======  md - syntax settings =======
let g:vim_markdown_folding_disabled=1
" ======  Ultisnip configuration =======
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets="<c-b>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"========  solarized settings =======
" set background=dark
" let g:solarized_termcolors=256
" ======== molokai settings ========
" let g:rehash256=1
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
colorscheme vorange
" ===== Airline settings ====
set ttimeoutlen=50
set laststatus=2
let g:airline_powerline_fonts=1
" ==== Mappings ====
" Map leader
let mapleader=","
" Insert opening and closing curly bracket
" nmap <leader><RETURN> a<SPACE>{<RETURN>}<ESC>O
" imap <F3> {<Esc>o<Return>}<Esc><Up>A<Tab>
" visual up and down movement through wrapped lines/paragraphs
noremap j gj
noremap k gk
" Repmap for easy motion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
nmap s <Plug>(easymotion-s)
" spacing
"autocmd Filetype html set tabstop=2 shiftwidth=2 expandtab
"autocmd Filetype ruby set tabstop=2 shiftwidth=2 expandtab
