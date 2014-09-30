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
Plugin 'scrooloose/nerdcommenter'
Plugin 'mattn/emmet-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
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
set nowrap
set ruler
set scrolloff=1
set showcmd
set sidescrolloff=5
set noswapfile
set ttimeout
set ttimeoutlen=100
set wildmenu
syntax on

" Line Numbers +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set number
set numberwidth=5

" Indentation ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
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
" >> CtrlP
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_height = 15
" >> Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'
" >> You Complete Me
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_use_ultisnips_completer = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-i>"
" Keys +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
let mapleader = ','
" >> command mode on semicolon in normal and visual mode
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
" >> save on Ctrl-s
nnoremap <C-s> :w<CR>
" >> remove search hightlight on Ctrl-l
nnoremap <silent> <C-l> :nohlsearch<CR><C-l>

" Leader +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>

" Ignore files +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" >> System
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.deb,*.gz
" >> Python
set wildignore+=*.pyc,__init__.py
" >> Images
set wildignore+=*.svg,*.jpg,*.png,*.ico
