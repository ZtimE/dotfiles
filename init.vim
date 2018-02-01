" Neovim config
set termguicolors

"English
language en_GB

"Other settings
filetype plugin indent on
syntax enable

" Set numbers, we use both to be able to
" see the current line nb
set number
set relativenumber

" tab settings
set tabstop=4
set softtabstop=4 
set shiftwidth=4
set textwidth=80
set smarttab
set expandtab

"Movement
noremap j gj
noremap k gk

" leader
let mapleader=","

"junegunn/vim-plug as plugin manager
"Automate install, taken from FAQ
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-sensible'
Plug 'crusoexia/vim-monokai'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neomake/neomake'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'luochen1990/indent-detector.vim'
call plug#end()
		
"Color scheme
colorscheme monokai

"Ultisnips
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"

"Indent guides
let g:indent_guides_enable_on_vim_startup = 1

"disable autogroups
nnoremap <leader>n :autocmd!<cr>

"Display list of errors
let g:neomake_open_list=0
"let g:neomake_open_list=2

"Autocomplete
let g:deoplete#enable_at_startup=1

"Airline
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#tabline#enabled=1

" Own mappings
map <f5> :NERDTreeToggle<RETURN>
nmap <leader>s :setlocal spell spelllang=en_gb<return>

noremap <leader>n :noh<cr>

"Copy/paste to clipboard
vnoremap <C-c> "+y
noremap <C-v> "+p

"Open vimrc in a split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>G
nnoremap <leader>sv :source $MYVIMRC<cr>

