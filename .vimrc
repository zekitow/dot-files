call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'godlygeek/tabular'
Plug 'majutsushi/tagbar'
Plug 'flazz/vim-colorschemes'
Plug 'mileszs/ack.vim'
Plug 'ervandew/supertab'
Plug 'mattn/emmet-vim'
Plug 'chrisbra/colorizer'

call plug#end()

let g:airline#extensions#tabline#enabled = 1
let mapleader=","
let g:colorizer_auto_color = 1

filetype on
filetype plugin on
filetype indent on

" sets
set clipboard=unnamedplus
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set list
set list listchars=tab:»·,trail:·,nbsp:·,space:·
set nojoinspaces
set number
set numberwidth=5
set cursorline!
set splitbelow
set splitright
set noshowmode
set linebreak
set nowrap
set cc=120
set backspace=indent,eol,start
set fileformats=unix,mac,dos
set cursorline
set incsearch
set hlsearch
set history=100
set undofile
set undodir=~/.vim/tmp
set wildmenu
set wildmode=list:longest
set t_Co=256

" backup options
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set hidden

" mappings
nnoremap ; :
nmap <F4> :TagbarToggle<CR>
nnoremap <silent> <S-UP> :bn<CR>
nnoremap <silent> <S-LEFT> :bn<CR>
nnoremap <silent> <S-RIGHT> :bp<CR>
nnoremap <silent> <S-DOWN> :bd<CR>
nmap <silent> <leader>bd <Plug>Kwbd
map <leader>nt :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFind<CR>
map <leader>l :noh<CR>
map <leader>f :Ack 

" views
autocmd BufRead,BufNewFile */application/views/* set filetype=html

" colors
colorscheme molokai
hi Normal guibg=NONE ctermbg=NONE
