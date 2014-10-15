" Vundle Init
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
" /Plugins

call vundle#end()
filetype plugin indent on
syntax on

" Plugin Config
let g:airline_powerline_fonts=1
let g:airline_theme='dark'
let g:ctrlp_max_height=15
let g:ctrlp_working_path_mode='ra'
let g:NERDTreeWinSize=30

" Indentation
set autoindent
set expandtab
set shiftwidth=2
set smarttab
set tabstop=2

" Options
set autowrite
set backspace=indent,eol,start
set cursorline
set history=200
set laststatus=2
set list
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set noswapfile
set number
set ruler
set scrolloff=1
set showcmd
set sidescrolloff=5
set splitbelow
set splitright
set ttimeout
set ttimeoutlen=100

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Text Wraping
set textwidth=0
set nowrap

" Wildmenu
set wildmenu
set wildmode=longest:full,full

" Remove auto-commenting from all filetypes
autocmd FileType * setlocal formatoptions-=cro

" Theme
colorscheme zenburn

" Highlight 81st column
call matchadd('ColorColumn', '\%81v')

" Destroy arrow keys, bad for your health
map  <Left>   <Nop>
map  <Right>  <Nop>
map  <Up>     <Nop>
map  <Down>   <Nop>

imap <Left>   <Nop>
imap <Right>  <Nop>
imap <Up>     <Nop>
imap <Down>   <Nop>

" Custom highlighting
hi ColorColumn  ctermbg=236         ctermfg=white
hi CursorLine   ctermbg=236
au InsertEnter * hi CursorLine ctermbg=239
au InsertLeave * hi CursorLine ctermbg=236
hi CursorLineNr ctermbg=yellow      ctermfg=0
hi Visual       ctermbg=5           ctermfg=15

" Our leader
let mapleader = ','

" Ctrl-S: save current file
nnoremap <C-S> :w<CR>
inoremap <C-S> <Esc>:w<CR>i

" Ctrl-L: clear last search highlighting
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

" Buffer switching
nnoremap <F7> :bprev<CR>
nnoremap <F8> :bnext<CR>

nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>t :NERDTreeToggle<CR>
nnoremap <Leader>n :NERDTreeFocus<CR>
nnoremap <Leader>v :set paste<CR>"+p:set nopaste<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.deb,*.gz
set wildignore+=*.pyc,__init__.py
set wildignore+=*.svg,*.jpg,*.png,*.ico
