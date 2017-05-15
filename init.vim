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
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=4

"Movement
noremap j gj
noremap k gk

" leader
let mapleader=","

"junegunn/vim-plug as plugin manager
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
call plug#end()
		
"Color scheme
colorscheme monokai

"Ultisnips
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"

"Run neomake when saving a file
autocmd! BufWritePost * Neomake

"Display list of errors
let g:neomake_open_list=2

"Autocomplete
let g:deoplete#enable_at_startup=1

"Airline
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#tabline#enabled=1

"Nerdtree
map <f5> :NERDTreeToggle<RETURN>

"Copy/paste to clipboard
vnoremap <C-c> "+y
noremap <C-v> "+p
