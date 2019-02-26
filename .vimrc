call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'mileszs/ack.vim'
Plug 'ervandew/supertab'
Plug 'mattn/emmet-vim'
Plug 'chrisbra/colorizer'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'gregsexton/MatchTag'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-rails'
Plug 'kaicataldo/material.vim'

" html
"" HTML Bundle
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'

" javascript
"" Javascript Bundle
Plug 'jelera/vim-javascript-syntax'

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

filetype on
filetype plugin on
filetype indent on

" sets
set clipboard=unnamed
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab
set list
set list listchars=tab:»·,trail:·,nbsp:·,space:·
set nojoinspaces
set number
set numberwidth=5
set splitbelow
set splitright
set noshowmode
set linebreak
set nowrap
set cc=90
set backspace=indent,eol,start
set fileformats=unix,mac,dos
set incsearch
set hlsearch
set history=100
set undofile
set undodir=~/.vim/tmp
set wildmenu
set wildmode=list:longest
set lazyredraw
set synmaxcol=90
syntax sync minlines=256
" set cursorline!

" backup options
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set tags=./tags,tags;$HOME
set hidden

" auto indent and other
set smartindent
set backspace=indent,eol,start
set autoindent
set ignorecase
set smartcase
autocmd FileType ruby set shiftwidth=2
autocmd BufWritePre * %s/\s\+$//e

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
vmap Y :w !pbcopy<CR><CR>

let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeNodeDelimiter = "\u00a0"
let NERDTreeDirArrows = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeIgnore=['\~$', 'bin', 'tmp', 'node_modules', 'docs', 'coverage', 'log']
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
let g:nerdtree_tabs_focus_on_files=1
let g:javascript_enable_domhtmlcss = 1

" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1
let g:ctrlp_custom_ignore = '\v[\/](bin|node_modules|target|dist|coverage|log|public)|(\.(swp|ico|git|svn))$'
let g:syntastic_ruby_checkers = ['mri']

" ruby
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

augroup vimrc-ruby
  autocmd!
  autocmd BufNewFile,BufRead *.rb,*.rbw,*.gemspec setlocal filetype=ruby
  autocmd FileType ruby set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2
augroup END

" vim-javascript
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab softtabstop=4
augroup END

set t_Co=256
set background=dark
colorscheme material
set t_ut=
set autochdir
set tags+=./tags;

" Enable true colors
if (has("termguicolors"))
  set termguicolors
endif

set mouse=a
set nocursorline        " Don't paint cursor line
set nocursorcolumn      " Don't paint cursor column
set lazyredraw          " Wait to redraw
set nocompatible
set ttyfast
set lazyredraw
let html_no_rendering=1 " Don't render italic, bold, links in HTML

if has("mac")
  set nocursorline

  if exists("+relativenumber")
    set norelativenumber
  endif

  set foldlevel=0
  set foldmethod=manual
endif
