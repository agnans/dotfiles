set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'hdima/python-syntax'
call vundle#end()
filetype plugin indent on

" General Configuration ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
call matchadd('ColorColumn', '\%81v')
exec "set listchars=trail:\uD7,nbsp:~,tab:\uBB\uBB"
set autowrite
set backspace=2
set cursorline
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set nobackup
set noshowmode
set nowrap
set ruler
set scrolloff=1
set showcmd
set sidescrolloff=5
set ttimeout
set ttimeoutlen=100
set wildmenu
syntax on

" Line Numbers +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set number
set numberwidth=5

" Tabs +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set autoindent
set expandtab
set shiftwidth=4
set smarttab
set tabstop=4

" Theme ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
colorscheme zenburn

" Unmap Arrows +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Split Panes ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set splitbelow
set splitright

" Highlights +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
hi CursorLineNr ctermbg=236 ctermfg=240
hi CursorLine   ctermbg=236
hi Visual       ctermbg=4   ctermfg=15
hi ColorColumn  ctermbg=green ctermfg=white

" Plugin Config ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_height = 15
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

" Keys +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
let mapleader = ','
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
nnoremap <C-s> :w<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

" Leader +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>

" Ignore files +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" BASIC
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.deb,*.gz
" PYTHON
set wildignore+=*.pyc,__init__.py
" IMAGES
set wildignore+=*.svg,*.jpg,*.png,*.ico
