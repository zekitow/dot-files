" Vim color scheme
"
" Name:         railscasts.vim
" Maintainer:   Nick Moffitt <nick@zork.net>
" Last Change:  01 Mar 2008
" License:      WTFPL <http://sam.zoy.org/wtfpl/>
" Version:      2.1
"
" This theme is based on Josh O'Rourke's Vim clone of the railscast
" textmate theme.  The key thing I have done here is supply 256-color
" terminal equivalents for as many of the colors as possible, and fixed
" up some of the funny behaviors for editing e-mails and such.
"
" To use for gvim:
" 1: install this file as ~/.vim/colors/railscasts.vim
" 2: put "colorscheme railscasts" in your .gvimrc
"
" If you are using Ubuntu, you can get the benefit of this in your
" terminals using ordinary vim by taking the following steps:
"
" 1: sudo apt-get install ncurses-term
" 2: put the following in your .vimrc
"     if $COLORTERM == 'gnome-terminal'
"         set term=gnome-256color
"         colorscheme railscasts
"     else
"         colorscheme default
"     endif
" 3: if you wish to use this with screen, add the following to your .screenrc:
"     attrcolor b ".I"
"     termcapinfo xterm 'Co#256:AB=\E[48;5;%dm:AF=\E[38;5;%dm'
"     defbce "on"
"     term screen-256color-bce

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "railscasts"

hi link htmlTag                     xmlTag
hi link htmlTagName                 xmlTagName
hi link htmlEndTag                  xmlEndTag

hi        Cursor                    ctermfg=0    ctermbg=15
hi        CursorLine                ctermbg=233
hi        Normal                    ctermfg=15

hi        Comment                   ctermfg=180
hi        Constant                  ctermfg=73
hi        Define                    ctermfg=173
hi        Error                     ctermfg=221  ctermbg=88
hi        Function                  ctermfg=15
hi        Identifier                ctermfg=73
hi        Include                   ctermfg=173
hi        PreCondit                 ctermfg=173
hi        Keyword                   ctermfg=173
hi        LineNr                    ctermfg=15
hi        Number                    ctermfg=2
hi        PreProc                   ctermfg=103
hi        Search                    ctermfg=NONE ctermbg=235 cterm=bold
hi        Statement                 ctermfg=173
hi        String                    ctermfg=2
hi        Title                     ctermfg=15
hi        Type                      ctermfg=1
hi        Visual                    ctermbg=50
hi        Directory                 ctermfg=110

hi        DiffAdd                   ctermfg=7 ctermbg=71 cterm=bold
hi        DiffDelete                ctermfg=7 ctermbg=52 cterm=bold
hi        Special                   ctermfg=1 cterm=bold

hi        pythonBuiltin             ctermfg=73
hi        rubyBlockParameter        ctermfg=15
hi        rubyClass                 ctermfg=15
hi        rubyConstant              ctermfg=1
hi        rubyInstanceVariable      ctermfg=189
hi        rubyInterpolation         ctermfg=2
hi        rubyLocalVariableOrMethod ctermfg=189
hi        rubyPredefinedConstant    ctermfg=1
hi        rubyPseudoVariable        ctermfg=221
hi        rubyStringDelimiter       ctermfg=143
hi        rubyBoolean               ctermfg=110
hi        rubySymbol                ctermfg=110
hi        rubyStringDelimiter       ctermfg=2
hi        rubyPseudoVariable        ctermfg=110

hi        xmlTag                    ctermfg=179
hi        xmlTagName                ctermfg=179
hi        xmlEndTag                 ctermfg=179

hi        mailSubject               ctermfg=2
hi        mailHeaderKey             ctermfg=221
hi        mailEmail                 ctermfg=2

hi        SpellBad                  ctermfg=160 ctermbg=NONE cterm=bold
hi        SpellRare                 ctermfg=168 ctermbg=NONE cterm=bold
hi        SpellCap                  ctermfg=189 ctermbg=NONE cterm=bold
hi        MatchParen                ctermfg=15  ctermbg=23

