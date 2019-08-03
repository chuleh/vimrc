call plug#begin('~/.vim/plugged')
Plug 'ap/vim-css-color'
Plug 'chriskempson/base16-vim'
Plug 'danro/rename.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-ruby/vim-ruby'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'danro/rename.vim'
Plug 'jreybert/vimagit'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-syntastic/syntastic'
Plug 'hashivim/vim-terraform'
Plug 'Yggdroot/indentLine'
call plug#end()

autocmd! bufwritepost init.vim source %

set encoding=UTF-8
set linebreak
set guioptions= "removes both scrollbars"
set updatetime=250
set incsearch
set laststatus=2
set autoindent
set background=dark
set clipboard=unnamed
set encoding=utf-8
set expandtab
set fileencodings=utf-8
set laststatus=2
set iskeyword-=_
set list
set noshowmode
set nowrap
set number
set shiftwidth=2
set showmatch
set smartindent
set smarttab
set softtabstop=2
set t_Co=256
set tabstop=2
set whichwrap=<,>,[,]
colorscheme molokai

set listchars=tab:▸▸

" FZF
map <c-p> :Files <CR>
"

let g:lightline = {
  \ 'colorscheme': 'jellybeans'
  \ }

filetype plugin on
filetype plugin indent on
syntax on
let leader = ','

map <C-TAB> :tabnext <CR>
map <C-S-TAB> :tabprevious <CR>
map <c-t> :tabnew <CR>
map <c-w> :tabclose <CR>
map <C-n> :NERDTreeToggle<CR>
nnoremap Q <nop>
autocmd BufWritePre * :%s/\s\+$//e

" movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" fold
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" open close
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
