call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'mileszs/ack.vim'
Plug 'ervandew/supertab'
Plug 'mattn/emmet-vim'
Plug 'chrisbra/colorizer'
Plug 'majutsushi/tagbar'
Plug 'gregsexton/MatchTag'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'Raimondi/delimitMate'
Plug 'kaicataldo/material.vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'vim-airline/vim-airline'

" html
"" HTML Bundle
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'

" javascript
"" Javascript Bundle
Plug 'jelera/vim-javascript-syntax'

call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

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
set laststatus=2
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
set undofile
set undodir=~/.vim/tmp
set wildmenu
set wildmode=list:longest
" set lazyredraw
" set synmaxcol=90
" syntax sync minlines=256
" set history=10000
" set cursorline! => performance issue

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

" toggle tagbar (F4)
nmap <F4> :TagbarToggle<CR>

" add new buffer (shift+up)
nnoremap <silent> <S-UP> :tabnew<CR>
" go to left buffer (shift+left)
nnoremap <silent> <S-LEFT> :bp<CR>
" go to right buffer (shift+right)
nnoremap <silent> <S-RIGHT> :bn<CR>
" delete a buffer (shift+down)
nnoremap <silent> <S-DOWN> :bd<CR>
nmap <silent> <leader>bd <Plug>Kwbd
map <leader>l :noh<CR>
map <leader>f :Ack!<Space>
vnoremap <leader>g y:Ack! <C-r>=fnameescape(@")<CR><CR>
vmap Y :w !pbcopy<CR><CR>

" select all to replace when ', s' is pressed
nnoremap <leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

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
colorscheme onehalfdark
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
set termguicolors
set tags=tags

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction

" Add your own mapping. For example:
noremap <silent> <C-E> :call ToggleNetrw()<CR>

hi SpecialKey guifg=#555555 guibg=#282c34
