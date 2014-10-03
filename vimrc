" Vundle ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'bling/vim-airline'
Plugin 'honza/vim-snippets'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
" /Plugins

call vundle#end()
filetype plugin indent on

" Plugin Config
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'
let g:ctrlp_max_height = 15
let g:ctrlp_working_path_mode = 'ra'
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-i>"

" Copy indent from current line when starting a new line
set autoindent

"indent     allow backspacing over autoindent
"eol        allow backspacing over line breaks (join lines)
"start      allow backspacing over the start of insert
set backspace=indent,eol,start

" Highlight the screen line of the cursor with CursorLine
set cursorline

" A history of ":" commands and previous search patterns is remembered
set history=1000

" When there is a previous search pattern, highlight all its matches
set hlsearch

" Ignore case in search patterns
set ignorecase

" Show where the pattern, as it was typed so far, matches.
set incsearch

" Always show a status line
set laststatus=2

" Activate list mode and set strings to use
set list
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+

" No swapfile for the buffer
set noswapfile

" Print the line number in front of each line
set number

" Show the line and column number of the cursor position
set ruler

" Min number of screen lines to keep above and below the cursor
set scrolloff=1

" Min number of screen cols to keep to the left and to the right of the cursor
set sidescrolloff=5

" Default number of spaces to use for each step of indent
set shiftwidth=4

" Number of spaces that a <Tab> in the file counts for.
set tabstop=4

" Use the appropriate number of spaces to insert a <Tab>
set expandtab

" How tabs are inserted and how backspace deletes shidtwidth at line start
set smarttab

"Show (partial) command in the last line of the screen.
set showcmd

" Splitting a window will put the new window below the current one
set splitbelow

" Splitting a window will put the new window right of the current one
set splitright

" Time out for mappings and key-codes
set ttimeout
set ttimeoutlen=100

" Command line completion
set wildmenu

" Maximum width of text that is being inserted.  A longer line will be
" broken after white space to get this width.  A zero value disables
" this
set textwidth=0

" When on, lines longer than the width of the window will wrap and
" displaying continues on the next line.
set nowrap

" Remove auto-commenting from all filetypes
autocmd FileType * setlocal formatoptions-=cro

" Highlight the 81st column
call matchadd('ColorColumn', '\%81v')

" Color scheme
colorscheme zenburn

" To switch syntax highlighting on according to the filetype
syntax on

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
hi ColorColumn  ctermbg=green       ctermfg=white
hi CursorLine   ctermbg=236
hi CursorLineNr ctermbg=236         ctermfg=240
hi Visual       ctermbg=4           ctermfg=15

" Our leader
let mapleader = ','

" Ctrl-S: save current file
nnoremap <C-S> :w<CR>
inoremap <C-S> <Esc>:w<CR>i

" Ctrl-L: clear last search highlighting
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>v :set paste<CR>"+p:set nopaste<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.deb,*.gz
set wildignore+=*.pyc,__init__.py
set wildignore+=*.svg,*.jpg,*.png,*.ico
