set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="tim"

" COLOR NAME
" ---------------------------------
" Black
" DarkBlue
" DarkGreen
" DarkCyan
" DarkRed
" DarkMagenta
" Brown, DarkYellow
" LightGray, LightGrey, Gray, Grey
" DarkGray, DarkGrey
" Blue, LightBlue
" Green, LightGreen
" Cyan, LightCyan
" Red, LightRed
" Magenta, LightMagenta
" Yellow, LightYellow
" White
" ---------------------------------

hi LineNr          ctermbg=grey ctermfg=white
hi CursorLineNr    ctermbg=246 ctermfg=white
hi SignColumn      ctermbg=246 ctermfg=white
hi String          ctermfg=darkblue
hi Normal          ctermfg=241 cterm=none
hi Comment         ctermfg=101
hi Visual          ctermfg=darkblue ctermbg=255
hi Special         ctermfg=blue
" whitespace highlighting etc
hi SpecialKey      ctermfg=lightgrey
" a default value
hi Constant        ctermfg=darkblue
" proc,global,variable etc
hi Statement       ctermfg=darkgrey
" colour of a variable value, ie $value
hi Identifier      ctermfg=lightblue cterm=none
hi Type            ctermfg=blue
hi Search          term=reverse ctermbg=yellow
" User1 is the first 4 characters of the statusline and User2 is the remainder
hi User1           ctermbg=lightgrey
hi User2           ctermbg=lightgrey ctermfg=blue
" tab header bar colours (these are actually set in
" ~/.vim/bundle/vim-airline/autoload/themes/tim.vim
hi TabLine ctermbg=green ctermfg=blue
hi TabLine ctermbg=green ctermfg=blue
hi TabLine ctermbg=lightgrey ctermfg=blue
hi TabLineSel ctermfg=blue
hi TabLineFill ctermbg=lightgrey ctermfg=lightgrey

hi SyntasticError cterm=underline ctermfg=darkred
hi SyntasticErrorSign ctermfg=red ctermbg=240

hi Pmenu ctermfg=grey ctermbg=lightgrey
hi PmenuSel ctermfg=white ctermbg=grey
hi MatchParen ctermfg=white ctermbg=darkblue
hi DiffAdd ctermfg=21 ctermbg=246 term=bold
hi DiffChange ctermfg=127  ctermbg=246 term=bold

hi NERDTreeFile ctermfg=blue
hi NERDTreeDir ctermfg=darkgrey
hi NERDTreeDirSlash ctermfg=white
hi NERDTreeOpenable ctermfg=darkgrey
hi NERDTreeClosable ctermfg=darkgrey
hi NERDTreeCWD ctermfg=white ctermbg=blue

hi VertSplit ctermfg=246
" this hides the ~'s for empty lines
hi NonText ctermfg=white

hi Title ctermfg=darkblue

hi WarningMsg ctermfg=blue

