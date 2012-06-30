" do not use vi compatibility mode. must come first because it changes other options.
set nocompatible

set encoding=utf-8
" show incomplete commands
set showcmd

" use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" show line numbers
set number

" don't break wrapped lines on words
set linebreak

" enable syntax highlighting
syntax on

" auto detect the type of file that is being edited
filetype on
" enable file type detection
filetype plugin on
" enable filetype-based indentation
filetype indent on

" EOL format
set fileformats=unix,mac,dos

" highlight cursor line
set cursorline

" highlight matches as you type
set incsearch

" highlight matches
set hlsearch


" indent settings
set shiftwidth=2 " number of spaces used for (auto)indent
set expandtab " use soft tabs (spaces)
set softtabstop=2 " size of soft tabs
" set autoindent " auto indent lines
" set smartindent " smart (language based) auto indent

" keep 100 cmdline history
set history=100

" backup options
set backup " turn on backup
set backupdir=~/.vim/backup " dir to save backup files
"set directory=~/.vim/tmp " dir to keep all swap files

" enhanced command line completion
set wildmenu

" complete files like a shell
set wildmode=list:longest

" enable 256 colors in terminal
set t_Co=256

" change leader key
let mapleader=","

" save keystrokes, so we don't need to press the Shift key
nnoremap ; :

" YankRing configs
let g:yankring_history_dir = "~/.vim/tmp"

map <F2> :NERDTreeToggle<CR>
map <C-BS> <C-W>
map <C-s> :w<CR>
nnoremap <F3> :set hlsearch!<CR>

map <C-q> :tabn<CR>
map <C-a> :tabp<CR>
map <C-n> :tabnew<CR>

" if $COLORTERM == 'gnome-terminal'
"    set term=gnome-256color
"    colorscheme custom
" else
"    colorscheme default
" endif
colorscheme molokai

