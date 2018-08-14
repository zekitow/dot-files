call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'flazz/vim-colorschemes'
Plug 'skielbasa/vim-material-monokai'
Plug 'mileszs/ack.vim'
Plug 'ervandew/supertab'
Plug 'mattn/emmet-vim'
Plug 'chrisbra/colorizer'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'gregsexton/MatchTag'

Plug 'jistr/vim-nerdtree-tabs'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/syntastic'
Plug 'Raimondi/delimitMate'

" html
"" HTML Bundle
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'
" javascript
"" Javascript Bundle
Plug 'jelera/vim-javascript-syntax'
" php
"" PHP Bundle
Plug 'arnaud-lb/vim-php-namespace'

call plug#end()

let g:airline#extensions#tabline#enabled = 1
let mapleader=","
let g:colorizer_auto_color = 1

" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1

" tagbar
let g:tagbar_autofocus = 1

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

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
" set t_Co=256

" backup options
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set tags=./tags,tags;$HOME
set hidden

" mappings
nnoremap ; :
nmap <F4> :TagbarToggle<CR>
nnoremap <silent> <S-UP> :tabnew<CR>
nnoremap <silent> <S-LEFT> :bp<CR>
nnoremap <silent> <S-RIGHT> :bn<CR>
nnoremap <silent> <S-DOWN> :bd<CR>
nmap <silent> <leader>bd <Plug>Kwbd
map <silent> <leader>nt :NERDTreeToggle<CR>
map <silent> <leader>nf :NERDTreeFind<CR>
map <leader>l :noh<CR>
map <leader>f :Ack!<Space>
vnoremap <Leader>g y:Ack! <C-r>=fnameescape(@")<CR><CR>
map <silent> <leader>w :%s/\s\+$//e<CR>
map <leader>fr :%s///gc

" views
" autocmd BufRead,BufNewFile */application/views/* set filetype=html

" colors
set t_Co=256
set background=dark
set termguicolors
colorscheme material-monokai
let g:materialmonokai_italic=1
let g:materialmonokai_subtle_spell=1
let g:airline_theme='materialmonokai'
let g:materialmonokai_subtle_airline=1
"set term=screen-256color
set t_ut=

" .zshrc
" ===> if [[ $TERM == xterm ]]; then TERM=xterm-256color; fi

" tmux.conf
" ===> set -g default-terminal xterm

